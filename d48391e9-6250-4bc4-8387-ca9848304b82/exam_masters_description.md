`Array#flatten`はselfを再帰的に平坦化します(3次元配列を1次元配列の配列を返す)。
`Array#flatten!`は破壊的にselfを再帰的に平坦化します。平坦化が行われない場合は、`nil`を返します。

`String#reverse`はselfを逆順にした配列を返します。

`%||`は%記法といいます。文字列リテラル等を定義することができます。
詳しい説明は[%記法](https://docs.ruby-lang.org/ja/2.1.0/doc/spec=2fliteral.html#percent)を参照してください。
