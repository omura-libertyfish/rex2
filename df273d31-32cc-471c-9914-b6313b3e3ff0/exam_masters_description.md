`attr_accessor`は`attr_reader`と`attr_writer`を同時に定義します。

`attr_reade`と`attr_writer`はそれぞれ冗長な定義も可能です。
```ruby
# attr_writer と同じ意味です
def v=(other)
  @v = other
end
# attr_reader と同じ意味です
def v
  @v
end
```

選択肢の`attr_accessible`はRails2.x, 3.x時代に存在したメソッドです。
