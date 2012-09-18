#!/usr/bin/ruby
require 'socket'
#puts "Starting up server..."
# establish the server

## Server established to listen for connections on port 2008

SIZE = 1024 * 1024 * 10

server = TCPServer.new(2008)
puts "Server listening..." 
client = server.accept       

while content = client.gets

	break if content =~ /quit/

    	puts "Gets ?"

  File.open('output.mp4', 'w+') do |file|
    while chunk = client.read(SIZE)

      file.write(chunk)
    end
end
  
  connection.puts "Closing the connection. Bye!"
  connection.close
end


#!/usr/bin/ruby
#require 'socket'
#puts "Starting up server..."
# establish the server

## Server established to listen for connections on port 2008
#server = TCPServer.new(2008)

# setup to listen and accept connections
#while connection = server.accept

#  connection.puts "---Hi, you are connected---"	
  
  #	  data = ""
 # 	  i=0
#	  while content = connection.gets
#		break if content =~ /quit/
	  #  puts line
#		connection.puts "Received!"
		#puts content
#		data += content
#		puts "passei #{i}"
#		i +=1
#		if (i > 591)
#			break
#		end
#	  end
#	  	puts "vou criar o arquivo"
#	  	File.open("out.mp4", "w+") { |file| file.write(data) }

 # connection.puts "Closing the connection. Bye!"
#  connection.close
#end