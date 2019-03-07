class MyClass
  @my_var = 1

  def self.read; @my_var; end

  def write; @my_var = 2; end
  def read; @my_var; end
end

obj = MyClass.new
p obj.read #=> nil
p obj.write
p obj.read #=> 2

# クラスのインスタンス変数とクラスのオブジェクトのインスタンス変数は別物のため値が違う。
# MyClass自体がClassのオブジェクトだからだ。
# これはクラスインスタンス変数と呼ばれる
p MyClass.read #=> 1

