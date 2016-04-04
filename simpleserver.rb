require 'socket'



server = TCPServer.open(2000)
loop {
  Thread.start(server.accept) do |client|
  client.puts "HTTP/1.0 200 OK"
  client.puts "Content-type: text/html\n\n"

  client.puts "<html><header><title>Hello Ruby</title></header><body><h1>HELLO RUBY</h1></body></html>"
  client.close
end
}
