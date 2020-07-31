`attr_accessor`メソッドは引数に指定した名前のインスタンス変数に対して読み取り用のメソッド(`setter`メソッド)と書き込み用メソッド(`setter`メソッド)を定義します。  
引数には`String`クラスか`Symbol`クラスのリテラルを指定します。複数指定も可能です。  
クラス内で`attr_accessor :a`と記述すると例1のようにインスタンス変数`@a`に対して読み取り用のメソッドと書き込み用のメソッドを定義したことになります。  

**例1**
```ruby
class Foo
  # getter
  def a
    @a
  end

  # setter
  def a=(val)
    @a = val
  end
end
```

`attr_accessor`メソッドの引数に指定された名前のインスタンス変数への読み取りと書き込みの両方が可能になります。

```ruby
class Foo
  attr_accessor :a, "b"
end

foo = Foo.new
foo.a, foo.b = "aaa", "bbb"

puts foo.a # => aaa
puts foo.b # => bbb
```