# use in a controlled environment!
payload = Marshal.dump({ :command => "id" })

# Simulate unsafe deserialization (if system uses `Marshal.load(user_input)`)
begin
  data = Marshal.load(payload)
  puts "Deserialized: #{data.inspect}"
rescue => e
  puts "Error: #{e.message}"
end
