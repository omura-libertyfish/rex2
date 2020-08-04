`raise`は例外を発生させます。  
第1引数に例外クラスまたはそのインスタンスを指定でき、第2引数にはメッセージを指定できます。  
引数は省略可能で例外クラスを省略した場合は`RuntimeError`が発生します。例外オブジェクトに対して`message`メソッドを使いその例外オブジェクトのエラーメッセージを取得できます。  
`rescue`節は、例外クラスを指定しない場合`StandardError`とそのサブクラスが補足対象となり、補足する例外を指定することで指定した例外とそのサブクラスのみを補足します。  
また`=>`を使用し任意の識別子(問題の場合`e`)を指定し、例外オブジェクトを参照することができます。  
例外処理における`else`節は`rescue`節が実行されなかった場合に実行されます。

**例**

```ruby
begin
  raise ArgumentError, "引数が不正です"
rescue => e
  puts e.class   # => ArgumentError
  puts e.message # => 引数が不正です
else
  # resuce節が実行されるのでelse節は実行されない
end
```

```ruby
begin
  raise "特定の例外が発生しました"
rescue => e
  puts e.class   # => RuntimeError
  puts e.message # => 特定の例外が発生しました
end
```

```ruby
begin
  raise
rescue RuntimeError => e
  puts e.class   # => RuntimeError
  puts e.message # => 空文字
end
```