以下が、問題コードで使用されているメソッドと説明です。

- `IO#eof?`: ファイルポインタが終端にある場合、`true`を返します。
- `IO.readlines`: ファイルから全てを読み込みます。
- `IO#seek(offset, whence)`: ファイルポインタを`whence`から`offset`まで移動します。
 - `IO::SEEK_CUR`: 現在のファイルポインタから
 - その他`whence`で使用できる値は[Rubyリファレンス](https://docs.ruby-lang.org/ja/2.1.0/method/IO/i/seek.html)を参照してください。

4行目で、ファイルから全て読み込んだ時点で、ファイルポインタはファイル終端にあります。
5行目は、ファイル終端から0文字移動するため、6行目では`[]`のみ表示されます。

以下のコードは問題コードに行番号をつけています。

```ruby
1: io = File.open('list.txt')
2: 
3: while not io.eof?
4:   io.readlines
5:   io.seek(0, IO::SEEK_CUR)
6:   p io.readlines
7: end
```
