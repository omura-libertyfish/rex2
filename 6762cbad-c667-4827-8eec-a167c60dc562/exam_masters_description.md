`alias_method`は既に存在するメソッドの別名を付けます。
宣言は`alias 新メソッド名 旧メソッド名`形式で行います。

よく似たメソッドに`alias`があります。異なる点は下記です。
- `alias`のメソッド名は識別子か`Symbol`を受け取ります。
- `alias_method`のメソッド名は`String`か`Symbol`を受け取ります。
