`each_char`にブロックを渡さない場合は、`Enumerator`オブジェクトが作成されます。

`Enumerator`オブジェクトを作成するには、`enum_for`または、`to_enum`を利用します。
引数にはレシーバーに送信したいメッセージ（メソッドの呼び出し）を設定します。
引数を指定しない場合は、`each`がデフォルト値になります。

次の例では、`each`を使って１つずつアクセスして要素を表示しています。

```ruby
irb(main):001:0> e = [1,2,3,4,5].to_enum
=> #<Enumerator: [1, 2, 3, 4, 5]:each>
irb(main):002:0> p e.next
1
=> 1
irb(main):003:0> p e.next
2
=> 2
irb(main):004:0> p e.next
3
=> 3
irb(main):005:0> p e.next
4
=> 4
irb(main):006:0> p e.next
5
=> 5
```

引数に`reverse_each`を指定した場合は次のとおりです。
配列の最後の要素から先頭に順にアクセスして要素を表示しています。

```ruby
irb(main):001:0> e = [1,2,3,4,5].to_enum(:reverse_each)
=> #<Enumerator: [1, 2, 3, 4, 5]:reverse_each>
irb(main):002:0> p e.next
5
=> 5
irb(main):003:0> p e.next
4
=> 4
irb(main):004:0> p e.next
3
=> 3
irb(main):005:0> p e.next
2
=> 2
irb(main):006:0> p e.next
1
=> 1
```

この問題では`each_char`を実行することを期待しているので、`enum_for(:each_char)`または、`to_enum(:each_char)`を選択すると同じ結果が得られます。
