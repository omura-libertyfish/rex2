Fiberは軽量スレッドを提供します。  
`Fiber#resume`を実行すると`Fiber.yield`が最後に実行された行から再開するか、`Fiber.new`に指定したブロックの最初の評価を行います。

サンプルプログラムを実行して、処理の内容を見てみましょう。

```ruby
f = Fiber.new do |name|
  Fiber.yield "Hi, #{name}"
end

p f.resume('Matz') # 'Hi, Matz'と表示されます。
```

1. `f.resume('Matz')`を実行する。
1. `Fiber.new`のブロックを評価し、引数`name`には`'Matz'`をセットする。
1. 変数を展開して、`'Hi, Matz'`を`Fiber.yield`の引数にセットする。
1. `Fiber.yield('Hi, Matz')`を実行すると、`f.resume('Matz')`の戻り値が`'Hi, Matz'`になる。
1. `Fiber.yield('Hi, Matz')`の実行終了を待たずに、プログラムが終了する。

問題のプログラムの期待値を得る組み合わせは次のとおりです。

```ruby
fiber = Fiber.new do
  Fiber.yield 'Hi, there!'
end

p fiber.resume
```
