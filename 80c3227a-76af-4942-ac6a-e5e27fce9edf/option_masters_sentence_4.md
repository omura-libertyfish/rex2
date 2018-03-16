```ruby
class Array
  def succ_each(step = 1)
    unless block_given?
      Enumerator.new do |yielder|
        each do |int|
          yielder << int + step
        end
      end
    else
      each do |int|
        yield int + step
      end
    end
  end
end
```
