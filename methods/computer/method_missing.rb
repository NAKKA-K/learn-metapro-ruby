class DS
  def get_cpu_info(id); "2.9 Ghz quad-core"; end
  def get_cpu_price(id); 120; end
  def get_mouse_info(id); "Wireless Touch"; end
  def get_mouse_price(id); 60; end
end

class Computer
  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
  end

  def method_missing(name)
    # 別インスタンスのmethod_missingを呼び出すこともできる。ユーザーが困惑するためやらないが。
    # @data_source.send(:method_missing, name) if !@data_source.respond_to?("get_#{name}_info")
    super if !@data_source.respond_to?("get_#{name}_info")
    info = @data_source.send("get_#{name}_info", @id)
    price = @data_source.send("get_#{name}_price", @id)
    result = "#{name.capitalize}: #{info} ($#{price})"
    return "* #{result}" if price >= 100
    result
  end
end

computer = Computer.new(0, DS.new)
p computer.cpu
p computer.mouse
p computer.pc
