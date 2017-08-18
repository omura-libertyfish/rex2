`1/2r`は`Rational`のインスタンスが作成されます。
`Fixnum`と`Rational`の演算は`Rational`になります。
(Ruby 2.4から`Fixnum`と`Bignum`が統合され`Integer`になりました)

その他のクラス演算を以下にまとめます。

| 演算 | 戻り値クラス |
| - | - | 
| `Fixnum`と`Rational`の演算 | `Rational` |
| `Float`と`Rational`の演算 | `Float` |
| `Fixnum`と`Complex`の演算 | `Complex` |
| `Float`と`Complex`の演算 | `Complex` |
| `Date`同士の減算 | `Rational` |
| `Time`同士の減算 | `Float` |
| `DateTime`同士の減算 | `Rational` |
