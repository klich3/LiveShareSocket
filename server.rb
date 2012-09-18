#!/usr/bin/ruby
require 'socket'

puts "Starting up server..."
# establish the server

## Server established to listen for connections on port 2008
server = TCPServer.new(2008)

SIZE = 512

# setup to listen and accept connections
#while connection = server.accept
connection = server.accept
  
  while content = connection.gets
		break if content =~ /quit/

		connection.puts "Received!"
		
		i = 0

		File.open('output.mp4', 'w+') do |file|
			
			while chunk = connection.read(SIZE)
				puts "passei #{i}"
				i+=1
				file.write(chunk)
			end
		
			puts "finished"
		end		
  end
	
  connection.puts "Closing the connection. Bye!"
  connection.close
#end