変数は1文字目を大文字にすると定数になります。定数には次の特徴があります。

1. 代入を行うと警告が発生しますが、値は変更されます。
2. 中身を直接変更した場合は値が変わります。ただし、警告は発生しません。

特徴1の例

```ruby
CONST = ["001", "002", "003"]
CONST = ["A", "B", "C"]
p CONST

# <実行結果>
# warning: already initialized constant CONST
# warning: previous definition of CONST was here
# ["A", "B", "C"]
```

特徴2の例

```ruby
CONST = ["001", "002", "003"]
CONST[0] = "A"
p CONST

# <実行結果>
# ["A", "002", "003"]
```

`freeze`はオブジェクトを凍結します。凍結されたオブジェクトは次の特徴があります。

1. 破壊的な操作ができません。
2. オブジェクトの代入ができます。
3. 自作クラスのインスタンス変数を`freeze`しない限り、変更できます。

特徴1の実行結果

```ruby
hoge = "hoge".freeze
hoge.upcase!
p hoge

# <実行結果>
# can't modify frozen String (RuntimeError)
```

特徴2の実行結果

```ruby
hoge = "hoge".freeze
hoge = "foo".freeze
puts hoge

# <実行結果>
# foo
```

特徴3の実行結果

```ruby
class Fish
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

liberty = Fish.new("liberty")
liberty.name.upcase!
puts liberty.name

# <実行結果>
# LIBERTY
```
