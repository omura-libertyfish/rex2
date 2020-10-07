次のコードの実行結果として正しいものを選択してください。

```ruby
class Foo
  attr_reader :var

  @var = "1"

  def initialize
    @var = "2"
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