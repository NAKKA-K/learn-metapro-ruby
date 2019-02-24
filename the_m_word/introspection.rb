class Greeting
  def initialize(text)
    @text = text
  end

  def welcome
    @text
  end
end

obj = Greeting.new('Hello')
p obj.class
p obj.class.instance_methods(false)
p obj.class.instance_methods(true)
p obj.instance_variables
p obj.welcome
