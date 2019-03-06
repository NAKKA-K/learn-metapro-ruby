def math(a, b)
  yield(a, b)
end

def do_math(a, b, &operation)
  math(a, b, &operation)
end

p do_math(1, 2) {|x, y| x * y } #=> 6


def my_method(&the_proc)
  the_proc
end

pr = my_method {|name| "Hello, #{name}" }
p pr.class #=> Proc
p pr.call('Bill') #=> "Hello, Bill
