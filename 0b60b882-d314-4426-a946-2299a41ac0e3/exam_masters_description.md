`Module#include`はモジュールの定義内容、メソッドや定数などを引き継ぎます。

```ruby
module M
  M = "m"

  def m
    M
  end
end

class C
  include M
end

C.new.m # => "m"
C::M    # => "m"
```

クラスを継承する場合スーパークラスはクラスである必要があるためモジュールをスーパークラスとして定義することはできません。

```ruby
module M
end

class C < M
end

# TypeError (superclass must be a Class (Module given))
```

`::`演算子を使用することでクラス内部から外部の定数を参照することができます。  
またクラスやモジュールを指定することで指定したクラス、モジュール内部の定数を参照することも可能です。

```ruby
Const = "top"

module M
  Const = "m"
end

class C
  include M

  def c1
    ::Const
  end

  def c2
    M::Const
  end
end

C.new.c1 # => "top"
C.new.c2 # => "m"
Const    # => "top"
M::Const # => "m"
C::Const # => "m"
```

問題の`::PI`は`Area`クラス内部からトップレベルの`PI`を参照しており、トップレベルに定数`PI`は存在しないので`Area#circle`を実行し`::PI`を参照しようとすると見つけられないため`NameError`が発生します。