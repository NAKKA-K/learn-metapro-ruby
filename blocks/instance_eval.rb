class MyClass
  def initialize
    @v = 1
  end
end

obj = MyClass.new

v = 2
# objインスタンスのスコープでコードを書ける
obj.instance_eval do
  p self #=> #<MyClass:0x00007fb03d18c0c8 @v=1>
  p @v #=> 1
  p v #=> 2
end
