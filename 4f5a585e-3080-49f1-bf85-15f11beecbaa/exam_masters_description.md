`lambda`を`call`する際の引数は省略できません。

`lambda`に似た機能に`Proc`があります。
似ていますが、異なる部分もあります。
次の表が`lambda`と`Proc`の違いになります。

| 特徴 | Proc | lambda |
|-|-|-|
| 引数の数 | 曖昧 | 厳密 |
| 引数の渡し方 | Proc.new { \|x, y\| ... } | lambda(x, y) { ... } |
| `return`, `brake`, `next` | `call`以降が実行されない | `call`以降も実行される |
