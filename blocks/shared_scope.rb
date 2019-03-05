# 一つのメソッド(スコープ)内に複数のフラットなメソッドを定義
# それにより好きなだけスコープを共有できる
def define_methods
  shared = 0

  Kernel.send :define_method, :counter do
    shared
  end

  Kernel.send :define_method, :inc do |x|
    shared += x
  end
end

define_methods

p counter
p inc(4)
p counter
p inc(4)
