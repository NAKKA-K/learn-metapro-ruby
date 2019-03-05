my_var = 'Success'

MyClass = Class.new do
  puts "クラス定義の中もスコープが同じ: #{my_var}"

  define_method :my_method do
    puts "メソッド定義の中もスコープが同じ: #{my_var}"
  end

end

MyClass.new.my_method()
