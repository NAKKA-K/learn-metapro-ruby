class Computer
  # 簡易的に実装するためコメントアウト
  #def initialize(computer_id, data_source)
  #  @id = computer_id
  #  @data_source = data_source
  #end

  def mouse
    component :mouse
  end

  def cpu
    component :cpu
  end

  def keyboard
    component :keyboard
  end

  def component(name)
    info = "get_#{name}_info"
    price = "get_#{name}_price"
    result = "#{name.capitalize}: #{info} ($#{price})"
    result
  end
end

computer = Computer.new
p computer.cpu
