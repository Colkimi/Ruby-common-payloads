# Testing Local File Inclusion (LFI)
path = "/etc/passwd"  # Change to an allowed test file
if File.exist?(path)
  puts File.read(path)
els
  puts "File not found."
end
