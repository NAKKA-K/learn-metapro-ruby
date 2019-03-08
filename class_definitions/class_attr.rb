class MyClass
  attr_accessor :a
end

obj = MyClass.new
obj.a = 2
p obj.a #=> 2


# Class以外にも全てのクラスにアトリビュートが追加されてしまう方法
class Class
  attr_accessor :b
end

MyClass.b = 42
p MyClass.b #=> 42


# MyClassにのみあアトリビュートが追加される(後に出てくるMyClassの特異クラスに生息する)
class MyClass
  class << self
    attr_accessor :c
  end
end

MyClass.c = 'It works!'
p MyClass.c #=> 'It works!'
