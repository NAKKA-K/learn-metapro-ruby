v1 = 1
class MyClass
  v2 = 2
  p local_variables #=> [:v2]

  def my_method
    v3 = 3
    local_variables
  end

  p local_variables #=> [:v2]
end

obj = MyClass.new
p obj.my_method #=> [:v3]
p local_variables #=> [:v1, :obj]

