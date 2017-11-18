次のプログラムは`Enumerator::Lazy`を使っています。
先頭から5つの値を取り出すにはどのメソッドが必要ですか

```
(1..100).each.lazy.chunk(&:even?)
```
