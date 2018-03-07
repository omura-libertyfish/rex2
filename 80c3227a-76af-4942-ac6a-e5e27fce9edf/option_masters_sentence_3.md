```ruby
class Array
  def succ_each(step = 1)
    return to_enum(:succ_each, step) unless block_given?

    each do |int|
      yield int + step
    end
  end
end

p [98, 99, 100].succ_each(2).map {|chr| chr.chr}

[101, 102, 103].succ_each(5) do |succ_chr|
  p succ_chr.chr
end
```
