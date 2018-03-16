次のプログラムと同じ実行結果が得られる実装を選択肢から選んでください。

```ruby
class Array
  def succ_each(step = 1)
    return enum_for(:succ_each, step) unless block_given?

    each do |int|
      yield int + step
    end
  end
end

p [98, 99, 100].succ_each(2).map {|succ_chr| succ_chr.chr}

[101, 102, 103].succ_each(5) do |succ_chr|
  p succ_chr.chr
end
```

```ruby
# 実行結果
["d", "e", "f"]
"j"
"k"
"l"
```
