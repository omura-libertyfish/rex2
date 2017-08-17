以下のコードを実行するとどうなりますか
```ruby
class C
protected
  def initialize
  end
end

p C.new.methods.include? :initialize
```
