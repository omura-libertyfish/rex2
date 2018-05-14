次のプログラムを実行するとどうなりますか

```ruby
array = ["a", "b", "c"].freeze
array = array.map!{|content| content.succ}

p array
```
