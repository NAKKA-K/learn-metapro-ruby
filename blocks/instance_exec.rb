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

  def twisted_method_with
    @y = 2
    z = 3

    # instance_execは引数を渡せる
    p C.new.instance_exec(@y) {|y| "@x: #{@x}, D::@y: #{y}, z: #{z}" }
  end
end

D.new.twisted_method #=> "@x: 1, @y: , z: 3"
D.new.twisted_method_with #=> "@x: 1, D::@y: 2, z: 3"
