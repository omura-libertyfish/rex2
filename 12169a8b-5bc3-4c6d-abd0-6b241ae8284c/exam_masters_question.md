以下のコードを実行するとどうなりますか

```ruby
class C
  def initialize
    p self.class
  end
end

class C2 < C
end

C2.new
```
