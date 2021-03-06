問題のコードで使用されているメソッド類は以下の通りです。

- `Kernel#block_given?`はブロックが渡された場合は、真になります。
- `yield`はブロックの内容を評価します。
- `{ }`は`do end`よりも結合度が高い為、実行結果に差が出ます。

問題のコードは以下のように解釈されます。

- `m2`へブロックが渡され、`m2 hello`が表示されます。
- `m1`へは引数が渡され、ブロックは渡されません。よって、`m1 `が表示されます。

```ruby
m1 (m2 {
      "hello"
    }
)

# 実行結果
# "m2 hello"
# "m1 "
```

問題のコードを`do end`で置き換えた場合は以下の実行結果になります。

```ruby
m1 m2 do  # m1(m2) do と解釈されます。
  "hello"
end

# 実行結果
# "m2 "
# "m1 hello"
```
