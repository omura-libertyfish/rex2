問題コードの注意すべき点は以下の通りです。

- `include`はModuleの**インスタンスメソッド**をMix-inするメソッドです。
- `def self.class_m`と宣言すると、**特異クラスのメソッド**になります。
- `C.methods`は`C`の特異メソッドを表示します。

よって、`C`には`class_m`が追加されません。

