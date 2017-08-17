以下のコードを実行するとどうなりますか
```ruby
class C
public
  def initialize
  end
end

p C.new.private_methods.include? :initialize
```
