この問題ではクラス`C`にある定数`CONST`を参照していますが、トップレベルにあるものとは別になります。

例えば次のプログラムですと、クラス`C`が2つあるように見えます。
ネストを調べるとモジュール`M`にあるクラス`C`は`M::C`と表示されています。
このように修飾された場合は同じ名前であっても別のものになります。

```ruby
class C
  p Module.nesting # [C]と表示されます
end

module M
  class C
    p Module.nesting # [M::C, M]と表示されます
  end
end
```

この問題では修飾済みの`M::C`にある`CONST`を参照しますので、`"Hello, world"`を表示します。
