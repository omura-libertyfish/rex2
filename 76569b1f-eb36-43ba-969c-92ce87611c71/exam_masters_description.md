モジュールにクラスメソッドを定義するには３つ方法があります。
この問題の答えは次のとおりです。

```ruby
module M
  extend self
  def a
    100
  end
end

p M.a
```

```ruby
module M
  def a
    100
  end

  module_function :a
end

p M.a
```

```ruby
module M
  class << self
    def a
      100
    end
  end
end

p M.a
```
