`module_eval`にブロックを渡した場合のネストは次の通りです。

```
A.module_eval do
  p Module.nesting # []と表示され、ネストされた状態になく、トップレベルにいることがわかる
end
```

トップレベルで定数を定義した場合は`Object`の定数になります。

```
B = "Hello, world"
p Object.const_get(:B) # "Hello, world"と表示される
```

問題にあるメソッド`A.f`はトップレベルにある定数を探索するため答えは`15`になります。
