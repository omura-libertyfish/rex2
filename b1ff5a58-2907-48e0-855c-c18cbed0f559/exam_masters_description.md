以下のコードはirbやpryではSyntaxErrorとなりますが、ファイルにコードを記述しスクリプトを実行する場合はSyntaxErrorにはなりません。

```ruby
1: (1..10).each
2: .reverse_each
3: .each do |i|
4:   puts i
5: end
```

以下のコードは1, 2行目の行末でバックスラッシュ(\)を記述することで、1行のコードとみなされます。

```ruby
1: (1..10).each \
2: .reverse_each \
3: .each do |i|
4:   puts i
5: end
```
