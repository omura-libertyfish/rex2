次のプログラムを実行するために`__(1)__`に適切なメソッドをすべて選んでください。

```ruby
class IPAddr
  include Enumerable

  def initialize(ip_addr)
    @ip_addr = ip_addr
  end

  def each
    return __(1)__ unless block_given?

    @ip_addr.split('.').each do |octet|
      yield octet
    end
  end
end

addr = IPAddr.new("192.10.20.30")
enum = addr.each

p enum.next # 192と表示される
p enum.next # 10と表示される
p enum.next # 20と表示される
p enum.next # 30と表示される
```
