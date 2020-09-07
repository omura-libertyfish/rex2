`Thread.new`, `Thread.start`, `Thread.fork`はスレッドオブジェクトを生成します。  
引数で指定したブロックを評価し、スレッドオブジェクトを返します。  
`Thread.new`は実行時`initialize`メソッドが呼ばれます。  
`Thread.start`と`Thread.fork`は`initialize`メソッドは呼ばれません。

```ruby
Thread.new {}   # => #<Thread:0x00007fc5e0836000@(irb):1 run>
Thread.start {} # => #<Thread:0x00007ffaa68110e8@(irb):2 run>
Thread.fork {}  # => #<Thread:0x00007f917003cb28@(irb):3 run>
```

ブロックが指定されずに呼ばれた場合は`ThreadError`が発生します。

```ruby
Thread.new # => ThreadError
```