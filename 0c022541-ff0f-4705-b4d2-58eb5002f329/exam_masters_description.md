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

問題では、`Fiber#resume`を２回実行していますが処理の順序は同じです。

```ruby
f = Fiber.new do |total|
  Fiber.yield total + 10
end

p f.resume(100) + f.resume(5)
```

1. `f.resume(100)`を実行する。
1. `Fiber.new`のブロックを評価し、引数`total`には`100`をセットする。
1. `100 + 10`を計算して`110`を`Fiber.yield`の引数にセットする。
1. `Fiber.yield(110)`を実行すると、`f.resume(100)`の戻り値が`110`になる。
1. `f.resume(5)`を実行する。
1. `Fiber.yield(110)`から処理を再開し、戻り値が`5`になる。
1. ブロックの最終行になったので、`f.resume(5)`の戻り値が`5`になる。
1. `110 + 5`を評価して、`115`が画面に表示される。

この問題のプログラムを実行すると、`115`が表示されます。
