以下のコードを実行するとどうなりますか
```ruby
class C
  class << C
    def hoge
      'Hi'
    end
  end

  def hoge
    'Goodbye'
  end
end

p C.hoge
```
