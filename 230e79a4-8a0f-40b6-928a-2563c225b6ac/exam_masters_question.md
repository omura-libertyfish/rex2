次のプログラムを実行するとどうなりますか

```ruby
val = 0

class B
end

class C < B
end

if C < BasicObject
  val += 100
else
  val += 15
end

if B < C
  val += 100
else
  val += 15
end

p val
```
