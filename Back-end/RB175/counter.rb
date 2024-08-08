require "socket"

=begin

Increment and decrement a value when a link is pressed.

=end
script_start = Time.now()

server = TCPServer.new("localhost", 3003)

server_connect = Time.now() - script_start

def parse_request(request_line)
  
  # Ruby destructuring assignment
  # an empty `request_line` will produce split of `nil`
  http_method, path_and_params, http = request_line.split(" ")
  
  # parse request breaks if no parameters passed
  path, params = path_and_params.split('?')

  params = (params || "").split("&").each_with_object({}) do |pair, hash|
    key, value = pair.split('=')
    hash[key] = value
  end

  [http_method, path, params]

end

loop do
  request_start = Time.now()

  client = server.accept

  client_connect = Time.now() - script_start
  
  request_line = client.gets
  # next if !request_line || request_line =~ /favicon/
  next unless request_line
  puts request_line

  http_method, path, params = parse_request(request_line)

  client.puts "HTTP/1.0 200 OK"
  client.puts "ContentType: text/html"
  client.puts
  client.puts "<html>"
  client.puts "<body>"
  client.puts "<pre>"
  client.puts "HTTP method: #{http_method}"
  client.puts "path       : #{path}"
  client.puts "queries    : #{params}"
  client.puts "server connect time    : #{server_connect}"
  client.puts "client connect time    : #{client_connect}"
  client.puts "request time    : #{Time.now() - request_start}"
  client.puts "</pre>"

  # retrieve value for `number`
  number = params["number"].to_i

  # display current `number`
  client.puts "<h1>Counter</h1>"
  client.puts "<p>The current number is #{number}.</p>"

  client.puts "<a href='?number=#{number + 1}'>Add One</a>"
  client.puts "<a href='?number=#{number - 1}'>Subtract One</a>"

  client.puts "</body>"
  client.puts "</html>"

  client.close

end