module ExplicitString
  def length
    super > 5 ? 'long' : 'short'
  end
end

String.class_eval do
  # 元のlengthメソッドをオーバーライド
  prepend ExplicitString
end

p "War and Peace".length #=> "long"
