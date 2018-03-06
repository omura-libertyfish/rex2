次のプログラムの実行結果を得るために`__(1)__`に適切なメソッドをすべて選んでください。

```ruby
class Array
  def succ_each(step = 1)
    return __(1)__(__method__, step) unless block_given?

    each do |int|
      yield int + step
    end
  end
end

[97, 98, 99].succ_each.map {|int|
  p int.chr
}
```

```
# 実行結果
"b"
"c"
"d"
```
