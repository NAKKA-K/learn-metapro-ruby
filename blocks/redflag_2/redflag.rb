def event(description)
  puts "ALERT: #{description}" if yield
end
load './blocks/redflag_2/events.rb'
