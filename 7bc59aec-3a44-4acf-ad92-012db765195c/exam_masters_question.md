次のプログラムを実行するとどうなりますか

```
class C
  CONST = "Hello, world"
end

$c = C.new

class D
  class << $c
    def say
      CONST
    end
  end
end

p $c.say
```
