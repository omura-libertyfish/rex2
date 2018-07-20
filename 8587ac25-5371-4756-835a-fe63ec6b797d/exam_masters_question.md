次のプログラムの期待値を得られるように正しいメソッドを選んでください。

```ruby
require 'json'

json = <<JSON
{
  "price":100,
  "order_code":200,
  "order_date":"2018/09/20",
  "tax":0.8
}
JSON

hash = __(1)__
p hash
```

期待値

```ruby
{"price"=>100, "order_code"=>200, "order_date"=>"2018/09/20", "tax"=>0.8}
```
