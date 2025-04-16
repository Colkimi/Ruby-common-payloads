# Testing Local File Inclusion (LFI)
path = "/etc/passwd"  # Change to an allowed test file
if File.exist?(path)
  puts File.read(path)
else
  puts "File not found."
end
