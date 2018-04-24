次の2つのプログラムを実行するとどうなりますか

`lib.rb`の内容

```ruby
module Lib
  $num += 1
end
```

`program.rb`の内容

```ruby
$num = 0
1..10.times do |n|
  require './lib.rb'
end
puts $num
```
