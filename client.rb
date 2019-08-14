require 'socket'

socket = TCPSocket.new("localhost", 3000)

while message = socket.gets
  puts message
end

socket.close
