module SecondLevelModule
  def self.included(base)
    base.extend ClassMethod
  end

  def second_level_instance_method; 'ok'; end

  module ClassMethod
    def second_level_class_method; 'ok'; end
  end
end

module FirstLevelModule
  def self.included(base)
    base.extend ClassMethod
  end

  def first_level_instance_method; 'ok'; end

  module ClassMethod
    def first_level_class_method; 'ok'; end
  end

  include SecondLevelModule
end

class BaseClass
  include FirstLevelModule
end

p BaseClass.new.first_level_instance_method #=> 'ok'
p BaseClass.new.second_level_instance_method #=> 'ok'

p BaseClass.first_level_class_method #=> 'ok'
p BaseClass.second_level_class_method #=> NoMethodError
