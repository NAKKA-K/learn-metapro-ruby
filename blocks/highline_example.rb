require 'highline'

hl = HighLine.new
friends = hl.ask("Please input a friend's name", lambda {|s| s.split(',') })
puts "Friends: #{friends.inspect}"
