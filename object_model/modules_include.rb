module M1
  def my_method
    'M1#my_method()'
  end
end

class C
  include M1
end

class D < C; end

p D.ancestors # => [D, C, M1, Object, Kernel, BasicObject]
# includeした場合、includeした場所より上位に配置される
# prependした場合、prependした場所より下位に配置される
