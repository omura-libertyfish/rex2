定数のスコープはレキシカルに決定されます。
ブロックはネストの状態を変更しないので、`module_eval`のブロックで定義した定数はこの問題ではトップレベルで定義したことになります。
定数`EVAL_CONST`はトップレベルで定義していることになりますので、`Object`クラスに定数あることが確認することが出来ます。

また、`Module`クラスのインスタンスには直接、定数は定義されていませんが継承関係を探索して参照することが出来ます。
`const_defined?`メソッドは第2引数に継承関係を探索するか指定出来るため、この問題では探索を行うかによって結果が変わります。

```ruby
mod = Module.new

mod.module_eval do
  EVAL_CONST = 100
end

puts Object.const_defined? :EVAL_CONST # trueと表示される
puts mod.const_defined? :EVAL_CONST # trueと表示される

# 第2引数にfalseを指定すると継承関係まで探索しない
puts mod.const_defined? :EVAL_CONST, false # falseと表示される
```

この問題では指定してない（デフォルト値`true`）ため探索を行い、定数をどちらも見つけることが出来ます。
結果は次のとおりです。

```ruby
EVAL_CONST is defined? true
EVAL_CONST is defined? true
```
