問題のコードは`";|:"`を区切り文字に指定されているため、例えば`"1;|:2"`であれば`[1, 2]`になります。
異なる区切り文字を複数指定する場合は正規表現を用います。
`[1, 2, 3, 4]`を得るためには、`"1;2:3;4".split(/;|:/)`とします。
