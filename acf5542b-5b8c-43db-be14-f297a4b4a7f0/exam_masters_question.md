次のコードを実行するとどうなりますか
```ruby
class Integer
  def +(other)
    self.-(other)
  end
end

p 1 + 1
```
