`Module.nesting`はネストの状態を返します。ネストされた場合ではれば配列で表示します。

```ruby
module B
  module M
    p Module.nesting # [B::M, B] と表示されます
  end
end
```

ブロックであればネストは定義された場所のネストになり、文字列であればレシーバのコンテキストで評価されます。

```ruby
_proc = Proc.new {
  p Module.nesting
}

_proc.call # [] が表示されます

m = Module.new

m.instance_eval(<<-EVAL)
  p Module.nesting # [#<Class:#<Module:0x007fe71194e210>>] と表示されます
EVAL

m.instance_eval {
  p Module.nesting # [] と表示されます
}
```

この問題の答えは次のとおりです。

```ruby
0
1
```
