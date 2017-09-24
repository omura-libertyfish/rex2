次のコードを実行するとどうなりますか

```ruby
p (1..10).lazy.map{|num|
  num * 2
}.take(3).inject(0, &:+)
```
