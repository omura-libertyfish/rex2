以下のコードを実行するとどうなりますか
```ruby
class C
private
  def initialize
  end
end

p C.new.public_methods.include? :initialize
```
