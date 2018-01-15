Rubyは定数の参照はレキシカルに決定されます。名前空間ではなく、プログラム上の定義された場所と使われている場所の静的な位置づけが重要です。
例えば、次のプログラムでは期待した結果が得られません。`CONST`がモジュール`M`のスコープにあるためです。

```
module M
  CONST = "Hello, world"
end

class M::C
  def awesome_method
    CONST
  end
end

p M::C.new.awesome_method # 例外が発生する
```

一方で同じレキシカルスコープにある場合は例外は発生しません。

```
module M
  CONST = "Hello, world"

  class C
    def awesome_method
      CONST
    end
  end
end

p M::C.new.awesome_method
```

また、使われている定数の場所がネストされている場合は内側から順に定数の探索が始まります。
レキシカルスコープに定数がない場合は、スーパークラスの探索を行います。

クラス`Cb`から最も物理的に近いのは`M2::CONST`であるため答えは`"011"`になります。
スーパークラスの探索はこの場合には行われません。
