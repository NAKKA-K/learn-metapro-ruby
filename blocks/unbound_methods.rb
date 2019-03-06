module MyModule
  def my_method
    42
  end
end

unbound = MyModule.instance_method(:my_method)
p unbound.class #=> UnboundMethod

# Stringクラスにanother_methodという名前でunbound(UnboundMethod)を定義する
String.send :define_method, :another_method, unbound
p "a".another_method #=> 42
