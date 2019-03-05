my_var = 'Success'

MyClass = Class.new do
  puts "クラス定義の中もスコープが同じ: #{my_var}"

  def my_method
    # ...
  end
end
