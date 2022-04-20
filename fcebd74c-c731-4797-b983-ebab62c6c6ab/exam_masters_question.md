テスト問題です。

```ruby
require 'singleton'

class Message
  include Singleton

  def morning
    'Hi, good morning!'
  end
end

p Message.__(1)__.morning
```

期待値

```
'Hi, good morning!'
```