names = ['bob', 'bill', 'heather']
p names.map {|name| name.capitalize} #=> ["Bob", "Bill", "Heather"]

# 同じ
p names.map(&:capitalize.to_proc) #=> ["Bob", "Bill", "Heather"]
p names.map(&:capitalize) #=> ["Bob", "Bill", "Heather"]
