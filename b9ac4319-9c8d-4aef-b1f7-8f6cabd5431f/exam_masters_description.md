`StandardError`を継承しないクラスのインスタンスを`raise`メソッドの引数に指定すると、`TypeError`が発生し次のメッセージが表示されます。

```
exception class/object expected
```

この問題では`raise`メソッドに配列を指定しているので、`TypeError`が発生し同様のメッセージが表示されます。
