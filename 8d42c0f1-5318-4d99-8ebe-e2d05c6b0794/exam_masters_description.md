問題文中で使用されているメソッドは次の通りです。

| メソッド | 説明 |
| `Array#pop` | `self`の末尾より1要素を破壊的に取り出します(LIFO)。 |
| `Array#push` | `self`の末尾に引数の値を破壊的に追加します(LIFO)。 |
| `Array#unshift` | `self`の先頭へ引数の値を破壊的に追加します(FIFO)。引数が指定されていない場合は何もしません。|
| `Array#shift` | `self`の先頭より1要素を破壊的に取り出します(FIFO)。 |

問題のコードを順番に実行すると以下のような結果になります。

```ruby
1: s = ["one", "two", "three"]
2: s.shift
3: s.shift
4: s.unshift
5: s.push "four"
6: p s

# <実行結果>
# 1: ["one", "two", "three"]
# 2: ["two", "three"]
# 3: ["three"]
# 4: ["three"]
# 5: ["three", "four"]
```
