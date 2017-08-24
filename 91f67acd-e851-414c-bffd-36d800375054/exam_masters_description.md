`Proc`は`call`の際に引数の数を省略することができます。
その際、不足の引数へは`nil`が代入されます。

`Proc`に似た機能に`lambda`があります。
似ていますが、異なる部分もあります。
次の表が`Proc`と`lambda`の違いになります。

| 特徴 | Proc | lambda |
|-|-|-|
| 引数の数 | 曖昧 | 厳密 |
| 引数の渡し方 | Proc.new { \|x, y\| ... } | lambda(x, y) { ... } |
| `return`, `brake`, `next` | `call`以降が実行されない | `call`以降も実行される |

そのほか、`lambda`はアロー演算子で定義することができます。

```ruby
calc = -> (x, y) { x * y }
calc.call(5, 3) #=> 15
```
