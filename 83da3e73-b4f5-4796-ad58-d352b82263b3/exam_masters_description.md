問題の例外クラスを正しく捕捉できる選択肢は次のとおりです。

```ruby
begin
  # `KeyError`と`StopIteration`が発生する処理
rescue KeyError

rescue StopIteration

end
```

---

```ruby
begin
  # `KeyError`と`StopIteration`が発生する処理
rescue KeyError, StopIteration

end
```

---

```ruby
begin
  # `KeyError`と`StopIteration`が発生する処理
rescue *[KeyError, StopIteration]

end
```

複数の例外クラスを捕捉するには代表的なものは3つです。

1. `rescue`節を捕捉したい例外クラスだけ記述する
1. `rescue`節で例外クラスをすべて記述する
1. 先の選択肢と同じですが、配列で指定してsplat演算子(`*`)で展開する

splat演算子(`*`)はブロック（do〜end）のように単体では使うことは出来ません。
配列の内容を並び順に展開してくれます。
例えば、メソッドの引数が3つで配列のサイズが3のときにsplat演算子(`*`)は次のように作用します。

```ruby
array = [:a, :b, :c]

def alphabet(a, b, c)
  puts a
  puts b
  puts c
end

alphabet(*array) # 配列の展開して、あたかも引数にひとつずつ指定するように作用します
# 出力は次の通り
# a
# b
# c
```
