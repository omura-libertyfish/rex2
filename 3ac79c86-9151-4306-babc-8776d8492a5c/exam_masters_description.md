メソッド`const`は特異クラスで定義されていますので、実行することができます。
その中で参照している定数`CONST`はレキシカルに決定されますので、`"Constant in Module instance"`が表示されます。

`instance_eval`はブロックを渡す場合と、文字列を引数とする場合でネストの状態が異なります。
ブロックを渡した場合はネストは変わりませんが、文字列を引数とした場合は期待するネストの状態になります。ネストが変わらない状態で定数の代入を行うと、再代入になり警告が表示される場合があります。
例えば、次のプログラムでは`module_eval`に文字列を引数とするとモジュールを再オープン、または定義したネストと同じです。

```ruby
module M
  p Module.nesting # [M]
end

M.module_eval(<<-EVAL)
  p Module.nesting # [M]
EVAL

M.instance_eval do
  p Module.nesting # []
end

module M
  p Module.nesting # [M]
end
```
