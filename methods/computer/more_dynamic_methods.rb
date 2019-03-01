class DS
  def get_cpu_info; "2.9 Ghz quad-core"; end
  def get_cpu_price; 120; end
  def get_mouse_info; "Wireless Touch"; end
  def get_mouse_price; 60; end
end

class Computer
  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
    # DSクラスに定義されてあるメソッドを元に、動的メソッド生成を行う
    data_source.methods.grep(/^get_(.*)_info$/) { Computer.define_component $1 }
  end

  def self.define_component(name)
    define_method(name) do
      info = @data_source.send "get_#{name}_info"
      price = @data_source.send "get_#{name}_price"
      result = "#{name.capitalize}: #{info} ($#{price})"
      return "* #{result}" if price >= 100
      result
    end
  end
end

computer = Computer.new(0, DS.new)
p computer.cpu

# DSクラスに定義されてあるメソッドを元に、動的メソッド生成が行われている
p computer.class.instance_methods(false) # => [:cpu, :mouse]
