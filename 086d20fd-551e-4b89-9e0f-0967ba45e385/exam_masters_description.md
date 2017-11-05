`Module#refine`は無名のモジュールを作成します。ブロック内の`self`は無名モジュールになります。

```ruby
class C
end

module M
  refine C do
    self # 無名モジュールを指します
  end
end
```

Refinementでクラスメソッドを再定義する場合は次のように`singleton_class`を使います。ブロックの中で`self.m1`としないのがポイントです。

```ruby
class C
  def self.m1
    'C.m1'
  end
end

module M
  refine C.singleton_class do
    def m1
      'C.m1 in M'
    end
  end
end

using M

puts C.m1 # C.m1 in M と表示されます。
```

この問題では、クラスメソッドは再定義していませんので`200`が表示されます。
