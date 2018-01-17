定数の参照はレキシカルに行われます。
`M::C#awesome_method`のコンテキストに`CONST`がないため例外が発生します。

```
module M
  CONST = "Hello, world"
end

class M::C
  def awesome_method
    CONST
  end
end

p M::C.new.awesome_method
```

------

`class_eval`にブロックを渡した場合は、ブロック内のネストはモジュール`M`になります。
そのコンテキストから定数を探しますので"Hello, world"が表示されます。

```
class C
end

module M
  CONST = "Hello, world"

  C.class_eval do
    def awesome_method
      CONST
    end
  end
end

p C.new.awesome_method
```

------

`class_eval`に文字列を渡した場合のネストの状態はクラス`C`です。
`CONST`はクラス`C`にありますので"Hello, world"が表示されます。

```
class C
  CONST = "Hello, world"
end

module M
  C.class_eval(<<-CODE)
    def awesome_method
      CONST
    end
  CODE
end

p C.new.awesome_method
```

------

`class_eval`にブロックを渡した場合は、ブロック内のネストはモジュール`M`になります。
そのコンテキストから定数を探しますがないため例外が発生します。

```
class C
  CONST = "Hello, world"
end

module M
  C.class_eval do
    def awesome_method
      CONST
    end
  end
end

p C.new.awesome_method
```
