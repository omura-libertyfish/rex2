`sub`は第一引数の検索対象のパターンと、第二引数の置換後の文字列を使って１回だけレシーバーの文字列を置換します。

```ruby
p "Hi, I love Ruby.".sub(/[A-Z]/, "*") # "*i, I love Ruby."と表示される
p "Hi, I love Ruby.".sub("Ruby", "Elm") # "Hi, I love Elm."と表示される
```

置換した結果はレシーバーと異なるオブジェクトIDで得ることが出来ます。

```ruby
chars = "I love programming language."
sub_chars = chars.sub("language", "Language")

p chars.__id__     # 70265002736720
p sub_chars.__id__ # 70265002716020
```

問題では置換を５回していますので、`"I love @pple, b@n@n@ @nd grape"`が正解です。
