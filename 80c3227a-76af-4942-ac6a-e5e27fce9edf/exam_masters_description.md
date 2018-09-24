ブロックを渡す場合と、チェーンを行う場合の両方を考慮する必要があります。
チェーンを行う場合は`Enumerator`オブジェクトを作成する必要があります。作成に必要なメソッドは`enum_for`と`to_enum`です。

問題では、`enum_for`を使っていますので選択肢のうち`to_enum`を使っている選択肢が答えのひとつです。
ただし、`to_enum`は引数にメソッド名とそのメソッドに必要な引数を指定する必要があります。問題では`succ_each`メソッドに引数`2`を渡していますので`Enumerator`オブジェクトを作成するときに必要になります。

また、`Enumerator`オブジェクトは`new`メソッドで作成することが出来ます。この問題ですと少し冗長ではありますが、全体的には次のとおりです。

```ruby
class Array
  def succ_each(step = 1)
    unless block_given? # ブロックが無い場合は、オブジェクトを作成
      Enumerator.new do |yielder|
        each do |int|
          yielder << int + step
        end
      end
    else # ブロックがある場合の実装
      each do |int|
        yield int + step
      end
    end
  end
end
```

これも答えのひとつで、この問題では`to_enum(:succ_each, step)`と`Enumerator`オブジェクトを作成する選択肢が答えになります。

なお、チェーンした先で渡されたブロックを評価するためには`Enumerator::Yielder`のオブジェクトを利用します。
オブジェクトに対して、`<<`を実行することでブロック内で評価した結果を受け取ることが出来ます。
