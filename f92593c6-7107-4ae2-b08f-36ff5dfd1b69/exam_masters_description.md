ブロックを渡さない場合は、`Enumerator`オブジェクトを作成してメソッドをチェーン出来るようにします。

`Enumerator`オブジェクトを作成するためには、`to_enum`または、`enum_for`を呼びます。これらの引数にメソッド名をシンボルで指定することでチェーンした先でブロックを渡されたときにどのメソッドを評価すればよいかが分かります。

この問題では、`with_prefix`を再び評価する必要がありますので、`__method__`または`:with_prefix`を引数に指定します。`__method__`はメソッドの中で呼び出すと、そのメソッド名になります。

```ruby
def awesome_method
  __method__
end

p awesome_method # :awesome_methodとシンボルでメソッド名が分かります
```
