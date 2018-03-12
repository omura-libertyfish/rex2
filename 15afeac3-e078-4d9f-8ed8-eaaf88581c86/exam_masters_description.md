ブロックを渡さない場合は、`Enumerator`オブジェクトを作成してメソッドをチェーン出来るようにします。また、ブロックを渡す場合は`yield`で評価してブロックを評価します。

内部イテレータを実装する場合は次のような構造になることが多いです。レシーバーの配列の要素に対して、`step`だけ数値を進めるようなイテレータを作ります。簡単化の為、整数値しかない配列だけを想定します。

```ruby
class Array
  def succ_each(step = 1)
    # Enumeratorオブジェクトを作成して、メソッドチェーンできるようにします。
    # ブロックの有無は、block_given?メソッドで判定します。
    return to_enum(:succ_each, step) unless block_given?

    # ブロックを渡された場合の実装です。
    # ブロックはyieldで評価します。
    each do |int|
      yield int + step
    end
  end
end
```

`to_enum`または、`enum_for`で`Enumerator`オブジェクトを作成しますが引数に実行対象のメソッド名をシンボルで指定します。
先程のサンプルコードでは`to_enum(:succ_each, step)`と書いていますが、これは`to_enum(__method__, step)`と書くのと同じです。`__method__`は実行中のメソッドをシンボルで返します。
