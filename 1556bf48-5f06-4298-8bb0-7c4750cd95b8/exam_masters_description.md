定数のスコープはレキシカルに決定されます。
ブロックはネストの状態を変更しないので、`module_eval`のブロックで定義した定数はこの問題ではトップレベルて定義したことになります。
また、文字列を引数とした場合はネストの状態を変更します。ネストの状態が変更されるので、この問題ではモジュールの中でプログラムを書いたことと同じことになります。

```ruby
mod = Module.new

# ネストが変化しない
mod.module_eval do
  p Module.nesting # []
end

# ネストが変化する
mod.module_eval(<<-EVAL)
  p Module.nesting # [#<Module:0x007f83480723a8>]
EVAL
```

ブロックと、文字列では次のような結果になります。
この問題ではブロックを利用しているので、`BLOCK`と出力にあるものが答えになります。

```ruby
# 出力結果
# BLOCK: CONST is defined? false
# BLOCK: CONST is defined? true
# HERE_DOC: CONST is defined? true
# HERE_DOC: CONST is defined? false

mod = Module.new

mod.module_eval do
  CONST_IN_BLOCK = 100
end

mod.module_eval(<<-EVAL)
  CONST_IN_HERE_DOC = 100
EVAL

puts "BLOCK: CONST is defined? #{mod.const_defined?(:CONST_IN_BLOCK, false)}"
puts "BLOCK: CONST is defined? #{Object.const_defined?(:CONST_IN_BLOCK, false)}"

puts "HERE_DOC: CONST is defined? #{mod.const_defined?(:CONST_IN_HERE_DOC, false)}"
puts "HERE_DOC: CONST is defined? #{Object.const_defined?(:CONST_IN_HERE_DOC, false)}"
```
