値を取り出すには、`Enumerator::Lazy#force`または`Enumerator::Lazy#first`を呼び出す必要があります。

問題文には「先頭から5つ」とあるので、`first(5)`として取り出します。
また、`Enumerator::Lazy#force`で問題文の通りにするには`Enumerator::Lazy#take`も利用します。

`Enumerator::Lazy#take`は`Enumerable#take`と違い`Enumerator::Lazy`のインスタンスを戻り値にします。
そのインスタンスから`Enumerator::Lazy#force`で実際の値を取り出します。
