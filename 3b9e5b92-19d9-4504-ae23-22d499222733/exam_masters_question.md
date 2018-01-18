次のプログラムを実行するとどうなりますか

```
class Object
  CONST = "1"
  def const_succ
    CONST.succ!
  end
end

class Child1
  const_succ
  class << self
    const_succ
  end
end

class Child2
  const_succ
  def initialize
    const_succ
  end
end

Child1.new
Child2.new

p Object::CONST
```
