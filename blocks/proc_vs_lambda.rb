def double(callable_object)
  callable_object.call * 2
end

l = lambda { return 10 } # lambdaのブロック内からreturnする
p double(l) #=> 20


def another_double
  pr = Proc.new { return 10 } # メソッドのスコープからreturnする
  result = pr.call # ここは呼び出されない
  return result * 2
end

p another_double #=> 10


# ---

def err_double(callable_object)
  callable_object.call * 2 # callable_object.callの時点でreturnが実行され、式の途中でメソッドから抜け出そうとしてエラーが発生する
end

pr = Proc.new { return 10 }
err_double(pr) # LocalJumpError
