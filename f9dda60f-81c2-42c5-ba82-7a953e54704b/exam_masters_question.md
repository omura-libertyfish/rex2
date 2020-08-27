次のコードの実行結果として正しいものを洗濯してください。

```ruby
class Foo
  @var = "1"

  def initialize
    @var = "2"
  end

  def var
    @var
  end
end

class Baz < Foo
  def self.var
    @var
  end
end

def Foo.var
  @var
end

arr = [
  Foo.new.var,
  Foo.var,
  Baz.new.var,
  Baz.var
]

p arr
```