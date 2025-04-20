require 'net/http'

# Test for SSRF (Server-Side Request Forger)
url = URI.parse("http://internal-server.local/admin")
res = Net::HTTP.get_response(url)
puts res.body if res.is_a?(Net::HTTPSuccess)
