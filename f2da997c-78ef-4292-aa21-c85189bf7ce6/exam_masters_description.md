`method_missing`は、継承チェーンを辿った末にメソッドが見つからなかった場合に、呼び出されます。
`method_missing`も継承チェーンを辿ります。

よって、`B#method_missing`が出力されます。
