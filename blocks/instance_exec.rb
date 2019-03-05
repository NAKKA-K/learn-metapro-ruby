class C
  def initialize
    @x = 1
  end
end

class D
  def twisted_method
    @y = 2
    z = 3

    # インスタンス変数はselfによって決まるため、@yはCの中だけで完結
    # ローカル変数はselfなどに関係しないため、Cのinstance_evalの中でも共有できる
    p C.new.instance_eval { "@x: #{@x}, @y: #{@y}, z: #{z}" }
  end
end

D.new.twisted_method #=> "@x: 1, @y: , z: 3"
