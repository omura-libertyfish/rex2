`a.length = 1`の配列の5番目へ値を入れると、配列の長さが拡張されます。未指定の要素へは`nil`が入ります。

`Array#compact`は`self`から`nil`を取り除くメソッドです。
問題では、`Array#compact!`ではないので、`self`は変わりません。
