`__END__`はRubyスクリプトの終わりを表します。
`__END__`以降の文字列は組み込み定数`DATA`に入ります。
`DATA`は`File`クラスのオブジェクトです。

```ruby
 1: while not DATA.eof?
 2:   lines = DATA.readlines
 3:   lines.map(&:chomp!)
 4:   lines.reverse
 5:   p lines
 6: end
 7: 
 8: __END__
 9: 1
10: 2
11: 3
12: 4
```

```
1行目: `File#eof?`はファイルの終わりまで読み込んだかを返します。
2行目: `File#readlines`はファイルから全て読み込みます。内容は各行を要素にもつ配列になります。
3行目: `lines`の中身を`chomp!`で破壊的に末尾の改行を取り除きます。
4行目: `reverse`は配列の内容を逆順にします。このメソッドは破壊的メソッドではないため、`self`の内容は変わりません。
```
