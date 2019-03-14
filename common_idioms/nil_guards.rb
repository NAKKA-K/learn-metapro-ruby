# 以下2つの行は同じ意味
a ||= []
a || (a = [])

# これも同じ
if defined?(a) && a
  a
else
  a = []
end


class C
  def elements
    @a ||= []
  end
end
