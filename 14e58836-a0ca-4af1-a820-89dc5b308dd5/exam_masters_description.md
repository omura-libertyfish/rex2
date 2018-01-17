定数の定義はメモリ上にあるテーブルに管理されます。
モジュール`M`を別々に書いたとしてもテーブルを参照して値を取得できます。

```
module M
  CONST = "Hello, world"
end

module M
  def self.say
    CONST
  end
end

p M::say
```

------

`instance_eval`の引数に文字列を指定するとネストの状態はモジュール`M`の特異クラスになります。
`CONST`はモジュール`M`にのみありますので、例外が発生します。

```
module M
  CONST = "Hello, world"
end

M.instance_eval(<<-CODE)
  def say
    CONST
  end
CODE

p M::say
```

------

特異クラス定義のコンテキストでは、ネストの状態はモジュール`M`の特異クラスになります。
`CONST`はモジュール`M`にのみありますので、例外が発生します。

```
module M
  CONST = "Hello, world"
end

class << M
  def say
    CONST
  end
end

p M::say
```

------

`module_eval`の引数に文字列を指定するとネストの状態はモジュール`M`になります。
`CONST`はモジュール`M`にありますので値を取得できます。

```
module M
  CONST = "Hello, world"
end

M.module_eval(<<-CODE)
  def self.say
    CONST
  end
CODE

p M::say
```
