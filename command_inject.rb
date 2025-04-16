# Safe way to test for command injection (echo test)
cmd = "echo hello"
output = `#{cmd}`
puts "Output: #{output}"
