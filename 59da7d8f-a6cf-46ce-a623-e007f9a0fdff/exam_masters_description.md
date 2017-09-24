`method_missing`は、継承チェーンを辿った末にメソッドが見つからなかった場合に、呼び出されます。
`method_missing`も継承チェーンを辿ります。


問題で、`B.dummy_method`と呼び出しています。
これは、`Class`クラスのインスタンスメソッドが呼ばれます。
よって、`Class#method_missing`が出力されます。
