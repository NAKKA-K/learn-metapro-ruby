class MyClass
  # ミミックメソッドという呼び名が付いている(別のものに擬態しているためである)
  def my_attribute=(value)
    @my_attribute = value
  end

  def my_attribute
    @my_attribute
  end
end

obj = MyClass.new
obj.my_attribute = 'x'
p obj.my_attribute #=> 'x'
