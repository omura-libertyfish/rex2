`initialize`の可視性は`private`に設定されています。
`initialize`の可視性を`public`に設定したとしても、必ず`private`になります。

```ruby
class C
public
  def initialize
  end
end

p C.new.public_methods.include? :initialize #=> false
```
