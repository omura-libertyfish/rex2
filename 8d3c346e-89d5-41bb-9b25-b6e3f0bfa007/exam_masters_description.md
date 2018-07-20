文字列のYAMLデータをHashオブジェクトにしています。

`YAML.load`は引数を１つ取り、YAMLデータをRubyオブジェクトにします。
引数は文字列でも良いですし、IOオブジェクトでも良いです。

`read`、`new`、`open`はYAMLモジュールにないメソッドです。

- 文字列からRubyオブジェクトにするサンプル
```ruby
require 'yaml'

yaml = <<YAML
  sum: 510,
  orders:
    - 260
    - 250
YAML

loaded_yaml = YAML.load yaml

p loaded_yaml
```

- IOオブジェクトからRubyオブジェクトにするサンプル
```ruby
require 'yaml'

loaded_yaml = YAML.load DATA

p loaded_yaml

__END__
- japan
- america
- france
```

`__END__`より後続行は`DATA`を利用することで読み出すことが出来ます。
