`map`メソッドのブロックは`Enumerator`オブジェクトをレシーバーとした場合に`Enumerator::Yielder`オブジェクトとなります。この問題のプログラム上では変数`yielder`を指します。

`Enumerator::Yielder`を評価するには、`<<`を呼び出します。
選択肢にある他のメソッドは実装されていません。
