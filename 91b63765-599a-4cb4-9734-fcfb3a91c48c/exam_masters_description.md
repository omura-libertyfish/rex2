Fiberは軽量スレッドを提供します。  
`Fiber#resume`を実行すると`Fiber.yield`が最後に実行された行から再開するか、`Fiber.new`に指定したブロックの最初の評価を行います。

サンプルプログラムを実行して、処理の内容を見てみましょう。

```ruby
f = Fiber.new do |name|
  Fiber.yield "Hi, #{name}"
end

p f.resume('Matz') # 'Hi, Matz'と表示されます。
p f.resume('Akira') # 'Akira'と表示されます。
p f.resume('Steve') # FiberErrorが発生します。
```

1. `f.resume('Matz')`を実行する。
1. `Fiber.new`のブロックを評価し、引数`name`には`'Matz'`をセットする。
1. 変数を展開して、`'Hi, Matz'`を`Fiber.yield`の引数にセットする。
1. `Fiber.yield('Hi, Matz')`を実行すると、`f.resume('Matz')`の戻り値が`'Hi, Matz'`になる。  
`Fiber.yield('Hi, Matz')`は終了せず、次の`f.resume('Akira')`の実行を待つ。
1. `f.resume('Akira')`を実行すると`Fiber.yield('Hi, Matz')`の戻り値が`'Akira'`になる。
1. ブロックの最終行なので、`'Akira'`が`f.resume('Akira')`の戻り値になる。

問題の処理の内容は次のとおりです。

```ruby
f = Fiber.new do
  Fiber.yield 15
  5
end

f.resume
f.resume
f.resume
f.resume
```

1. １行目の`f.resume`を実行する。
1. `Fiber.new`のブロックを評価する。
1. `Fiber.yield(15)`を実行すると、１行目の`f.resume`の戻り値が`15`になる。
1. `Fiber.yield(15)`は終了せず、次の２行目の`f.resume`の実行を待つ。
1. ２行目の`f.resume`を実行すると、`Fiber.yield(15)`の戻り値が`nil`になる。  
なお、`Fiber#resume`に引数なしで実行すると、`Fiber.yield`の戻り値は`nil`になります。
1. 処理を次の行に移り、ブロック最終行の`5`が２行目の`f.resume`の戻り値になります。
1. ３行目の`f.resume`を実行するが、ブロックの評価が終わっているので例外`FiberError`が発生します。

この問題の答えは、３回以上呼び出す

```ruby
f.resume
f.resume
f.resume
```

または、

```ruby
f.resume
f.resume
f.resume
f.resume
```

がこの問題の答えになります。