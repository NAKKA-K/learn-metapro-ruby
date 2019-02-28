class MyClass
  p self # => MyClass

  def testing_self
    @var = 10
    my_method # レシーバを明示しない場合、自動的にselfに対する呼び出しとされるためself.my_methodと同義
    # self.private_method # => privateメソッドは明示的なレシーバをつけて実行することができないという単純なルールを持っている
    self
  end

  def my_method
    @var = @var + 1
  end

  private
  def private_method; end
end

obj = MyClass.new
p obj.testing_self # => #<MyClass:0x00007fab4e9800c0 @var=11>

# Rubyインタプリタが作ったトップレベルコンテキスト(main)と呼ばれるオブジェクト上で全てのコードが実行されている
p self # => main
p self.class # => Object
