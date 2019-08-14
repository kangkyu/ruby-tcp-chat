require 'socket'

server = TCPServer.new(3000)
puts "Listening on port #{server.local_address.ip_port}"

Socket.accept_loop(server) do |socket|
  # data = socket.readpartial(1024)
  # puts data

  socket.write "hello\n"

  socket.close
end
