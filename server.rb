

def dataReceived(session, data)
        a = data.split(':')
        puts a
        if (len(a) > 1)
            command = a[0]
            content = a[1]
 
            msg = ""
            if (command == "iam")
                session.name = content
                msg = session.name + " has joined"
 
            elif (command == "msg")
                msg = session.name + ": " + content
                puts msg
            end
         end
 
            for c in session.factory.clients do
                c.message(msg)
            end
end

#!/usr/bin/ruby
require 'socket'
puts "Starting up server..."
# establish the server

## Server established to listen for connections on port 2008
server = TCPServer.new(2008)

# setup to listen and accept connections
while connection = server.accept
  while line = connection.gets
    break if line =~ /quit/
  #  puts line
    connection.puts "Received!"
    
    commandArray = line.split(":")
	
	puts commandArray.length;
    
  end

  connection.puts "Closing the connection. Bye!"
  connection.close
end