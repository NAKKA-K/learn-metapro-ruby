module Greetings
  def greet
    "hello"
  end
end

class MyClass
  include Greetings
end

p MyClass.new.greet #=> "hello"
