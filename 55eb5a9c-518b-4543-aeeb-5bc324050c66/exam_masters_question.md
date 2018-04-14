`singleton_class`は特異クラスを取得するメソッドです。
特異クラスは`#<Class:クラス名>`のように表示されます。

```ruby
class C
end

p C.singleton_class # #<Class:C>と表示される
```

次のプログラムを実行するとどうなりますか

```ruby
class C
end

p C.singleton_class.singleton_class.singleton_class.singleton_class
```
