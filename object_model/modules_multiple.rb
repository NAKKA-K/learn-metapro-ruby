module M1; end

module M2
  include M1
end

module M3
  prepend M1
  include M2
end

p M3.ancestors # => [M1, M3, M2]

# M2のinncludeとM1のprepend順番を入れ替えてみる
module Z3
  include M2
  prepend M1
end

p Z3.ancestors # => [Z3, M2, M1]

# 同じモジュールを継承チェーンに組み込もうとした場合、先に継承チェーンに組み込まれたものを優先とする

