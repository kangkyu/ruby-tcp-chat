require 'socket'

server = TCPServer.new(3000)

socket = server.accept

socket.write "hello\n"

socket.close
