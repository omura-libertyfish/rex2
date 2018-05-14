次のプログラムを実行するとどうなりますか

```ruby
array = ["a", "b", "c"].map(&:freeze)
array = array.freeze

array.each do |chr|
  chr.upcase!
end

p array
```
