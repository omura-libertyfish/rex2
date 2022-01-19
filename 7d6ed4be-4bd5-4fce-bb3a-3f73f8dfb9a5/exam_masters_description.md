以下の表が、問題コードで使用されているメソッド一覧です。

| メソッド | 説明
|-|-|
| `String#concat(other)` | `self`に`other`を繋げます |
| `String#reverse!` | 文字列の並びを反転します このメソッドは破壊的メソッドです |
| `String#index(pattern, pos)` | 文字列の`pos`番目から`pattern`を検索し、最初に見つかった位置を返します |

問題のコードを1行ずつ実行すると以下のようになります。

```ruby
1: a = "Ruby"
2: b = " on Rails"
3: a.concat b
4: a.reverse!
5: p a.index("R", 1)

# <実行結果>
# 3: p a.concat b #=> "Ruby on Rails"
# 4: p a.reverse! #=> "sliaR no ybuR"
# 5: p a          #=> "sliaR no ybuR"
```
