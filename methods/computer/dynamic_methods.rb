class Computer
  # 簡易的に実装するためコメントアウト
  #def initialize(computer_id, data_source)
  #  @id = computer_id
  #  @data_source = data_source
  #end

  def self.define_component(name)
    define_method(name) do
      info = "get_#{name}_info"
      price = "get_#{name}_price"
      result = "#{name.capitalize}: #{info} ($#{price})"
      result
    end
  end

  define_component :mouse
  define_component :cpu
  define_component :keyboard
end

computer = Computer.new
p computer.cpu

# define_methodで生成されたメソッドは、クラスメソッドの中で生成されたとしてもインスタンスメソッド
p computer.class.instance_methods(false) # => [:mouse, :cpu, :keyboard]
