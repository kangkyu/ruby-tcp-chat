require 'socket'

socket = TCPSocket.open("localhost", 3000)

while message = socket.gets
  puts message
end

socket.close
