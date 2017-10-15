`lazy`は`Enumerator::Lazy`クラスを返します。
`Enumerator::Lazy`クラスは`map`や`select`メソッドに遅延評価を提供します。

`take(3)`が実行されると`1`から`3`まで`map`に渡されたものと判断され、`inject`に渡されます。
よって、答えは`12`になります。
この時、`4`から`10`までの評価は発生しません。