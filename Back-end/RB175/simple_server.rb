require "socket"

server = TCPSocket.new("localhost", 3003)

def 

loop do

  client = server.accept

  request_line = client.gets
  puts request_line


end
