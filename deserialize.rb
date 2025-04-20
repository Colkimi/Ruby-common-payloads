# use in a controlled environment!
payload = Marshal.dump({ :command => "id" })

# Simulate unsafe deserialization
begin
  data = Marshal.load(payload)
  puts "Deserialized: #{data.inspect}"
rescue => e
  puts "Error: #{e.message}"
end
