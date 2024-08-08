require "socket"

=begin

  + change program to enable specification of number
  of dice and number of sides to each die

  + can think of a server request as a function call:
    - can take arguments
    - returns value to user based on passed arguments

  + `rolls` and `sides` can be a URL query string parameter
    - use request params to generate hash to perform 
      roll behavior

  + parse http request


URL components
  scheme  : http 
  host    : localhost
  port    : 3003
  path    : /

HTTP request components
  method  : GET
  path    : /?rolls=2&sides=6
  version : HTTP/1.1 

HTTP message
  "GET /?rolls=2&sides=6 HTTP/1.1"

NOTES
=========
> request parse
  + `http_method` : starting characters up to first space (`" "`)
  + port?
  + path?
  + host?
  + generate `request` hash
    - query parameters are hash keys
    - query values are hash values
    + slice string from `?` to end and split on `"&"` to generate Array
    + transform Array by splitting String elements on `"="` to generate nested Array
      and convert to Hash

> response
  + status_code, status_text
  + header(s)
  + HTML body

=end

server = TCPServer.new("localhost", 3003)

# def get_method(request)
#   space_index = request.index(" ")
#   request[0...space_index]
# end

# def get_params(request)
#   query_start = request.index('?')
#   query_end = request.rindex(" ")
#   query = request[query_start.succ...query_end]
#   queries = query.split('&').map { |q| q.split('=') }.to_h
# end

def parse_request(request_line)
  
  # Ruby destructuring assignment
  http_method, path_and_params, http = request_line.split(" ")
  path, params = path_and_params.split('?')

  params = params.split("&").each_with_object({}) do |pair, hash|
    key, value = pair.split('=')
    hash[key] = value
  end

  [http_method, path, params]

end


loop do
  
  client = server.accept
  
  request_line = client.gets
  next if !request_line || request_line =~ /favicon/
  puts request_line

  http_method, path, params = parse_request(request_line)

  # client.puts request_line
  # client.puts rand(6) + 1
  
  # client.puts "HTTP method: #{http_method}"
  # client.puts "path       : #{path}"
  # client.puts "queries    : #{params}"
  # client.puts

  client.puts "HTTP/1.0 200 OK"
  client.puts "ContentType: text/html"
  client.puts
  client.puts "<html>"
  client.puts "<body>"
  client.puts "<pre>"
  client.puts "HTTP method: #{http_method}"
  client.puts "path       : #{path}"
  client.puts "queries    : #{params}"
  client.puts "</pre>"

  client.puts "<h1>Rolls</h1>"

  rolls = params["rolls"].to_i
  sides = params["sides"].to_i

  rolls.times do |i|
    roll = rand(sides) + 1
    client.puts "<p>#{roll}</p>"
  end

  client.puts "</body>"
  client.puts "</html>"

  client.close

end