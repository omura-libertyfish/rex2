`Enumerable`をインクルードした場合は、`each`メソッドを実装する必要があります。
ブロックが渡されない場合でも、`Enumerator`オブジェクトを返すようにして外部イテレータとしても使えるようにします。

`Enumerator`オブジェクトを作成するメソッドは`enum_for`、または`to_enum`です。