require 'test/unit'

p [].methods.grep /^re/ # => [:replace, ...] replace method overwrite...

class Array
  def replace(original, replacement) # Rename to substitute
    self.map {|e| e == original ? replacement : e }
  end
end

class ReplaceArrayTest < Test::Unit::TestCase
  def test_replace
    original = ['one', 'two', 'one', 'three']
    replaced = original.replace('one', 'zero')
    p replaced
    assert_equal ['zero', 'two', 'zero', 'three'], replaced
  end
end

