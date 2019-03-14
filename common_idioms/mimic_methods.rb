class C
  def my_attribute=(value)
    @p = value
  end

  def my_attribute
    @p
  end
end

obj = C.new
obj.my_attribute = 'value'
p obj.my_attribute #=> 'value'
