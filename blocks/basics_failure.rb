def a_method(a, b)
  return 'Not found block' unless block_given?
  a + yield(a, b)
end

p a_method(1, 2) # => Not found block
p a_method(1, 2) {|a, b| a + b } # => 4

