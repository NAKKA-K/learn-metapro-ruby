class MyClass
  attr_accessor :my_attribute

  def set_attribute(n)
    my_attribute = n
  end

  def set_attribute_correct(n)
    self.my_attribute = n
  end
end

obj = MyClass.new
obj.set_attribute 10
p obj.my_attribute #=> nil

obj.set_attribute_correct 10
p obj.my_attribute #=> nil
