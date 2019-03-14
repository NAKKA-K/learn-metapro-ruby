require 'faraday'

conn = Faraday.new("https://twitter.com/search") do |faraday|
  faraday.response :logger
  faraday.adapter Faraday.default_adapter
  faraday.params["q"] = "ruby"
  faraday.params["src"] = "typd"
end

response = conn.get
p response.status #=> 200
