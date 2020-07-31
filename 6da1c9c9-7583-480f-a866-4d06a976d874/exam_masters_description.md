`attr_reader`メソッドは引数に指定した名前のインスタンス変数に対して読み取り用メソッド(`getter`メソッド)を定義します。  
引数は`String`クラスか`Symbol`クラスのリテラルで指定し、複数指定することもできます。  
クラス内で`attr_reader :a`と記述すると例1のようにインスタンス変数`@a`に対して読み取り用のメソッドを定義したことになります。

**例1**
```ruby
class Foo
  def a
    @a
  end
end
```

例2, 例3の`Foo`クラスはそれぞれインスタンス変数`@a`に対しての読み取りメソッドを持ちます。

**例2**

```ruby
class Foo
  attr_reader :a
end
```

**例3**

```ruby
class Foo
  def a
    @a
  end
end
```

`initialize`という名前のメソッドは特別なメソッドで、`initialize`メソッドが記述されているクラスから`Class#new`メソッドでオブジェクトを生成する際に、必ず実行される初期化メソッドです。  
`Class#new`メソッドで与えらた引数をそのまま`initialize`メソッドが受け取ります。  
下記のコードでは`initialize`メソッドを使用し、インスタンス変数`@var1`, `@var2`を初期化しています。

```ruby
class Foo
  def initialize(var1, var2)
    @var1 = var1
    @var2 = var2
  end

  attr_reader :var1, :var2
end

var1, var2 = "初期化1", "初期化2"

foo1 = Foo.new(var1, var2)
foo2 = Foo.new(var1, var2)

puts foo1.var1 # => 初期化1
puts foo2.var2 # => 初期化2
```
