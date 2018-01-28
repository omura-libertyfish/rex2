クラス`K::P`にあるクラス`M::C`はトップレベルにあるものとは異なります。
ネスト状態が同じものがあれば、そのレキシカルスコープから定数の探索を行います。
この問題では定数`CONST`が参照しているのは`K::P::M::C`で、そのレキシカルスコープにある定数を探索しますので`"Good, evening"`と表示されます。

```ruby
module K
  class P
    p Module.nesting # [K::P, K]と表示されます
  end
end

module K::P::M
  class C
    p Module.nesting # [K::P::M::C, K::P::M]と表示されます
  end
end

module M
  class C
    p Module.nesting # [M::C, M]と表示されます
  end
end

class K::P
  class M::C
    p Module.nesting # [K::P::M::C, K::P]と表示されます
  end
end
```
