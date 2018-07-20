次のプログラムの期待値を得られるように正しいメソッドを選んでください。

```ruby
require 'yaml'

yaml = <<YAML
  sum: 510,
  orders:
    - 260
    - 250
YAML

object = YAML.__(1)__

p object
```

期待値（Hashオブジェクト）

```ruby
{"sum"=>510, "orders"=>[260, 250]}
```
