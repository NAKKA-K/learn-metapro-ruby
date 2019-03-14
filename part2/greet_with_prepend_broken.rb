module EnthusiasticGreetings
  def greet
    "Hey, #{super}!"
  end
end

class MyClass
  prepend EnthusiasticGreetings

  def greet
    "hello"
  end
end

p MyClass.ancestors[0..2] #=> [EnthusiasticGreetings, MyClass, Object]
p MyClass.new.greet #=> "Hey, hello!"


