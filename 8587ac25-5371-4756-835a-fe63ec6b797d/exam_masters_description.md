JSON形式の文字列をHashオブジェクトにするメソッドを選ぶ必要があります。

`JSON.load`または、`JSON.parse`は引数にJSON形式の文字列を指定するとHashオブジェクトに変換します。

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

using_parse = JSON.parse json
p using_parse

using_load = JSON.load json
p using_load
```
