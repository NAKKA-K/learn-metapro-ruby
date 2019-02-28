class MyClass
  def my_method
    "original"
  end

  def another_method
    my_method
  end
end

module MyClassRefinements
  refine MyClass do
    def my_method
      "refine"
    end
  end
end

using MyClassRefinements
p MyClass.new.my_method # => refine
p MyClass.new.another_method # => original

# Oh no ...
# usingされた場所から直接呼び出した場合、そのメソッドはrefineされている。
# しかし、例え同じレシーバからの呼び出しだとしても別のメソッドを介した場合などはrefineされていない状態で呼び出されてしまう。
