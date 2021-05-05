#Rubyの基礎学習の記録です

・print puts p について
print 通常表示
puts 表示後改行
p ""も表示　デバックなどに使われる

・変数定数について
変数-書き換え可能
これはどの言語でも同じような感じ

定数-大文字で始める
Rubyは警告を出してくれるが、書き換えが可能になっている

・Ruby言語の特性
Object
Stringclass
FloatClass
Instance
Method

・数値オブジェクトと主要なメソッド
.class-クラスを調べる
.methods-メソッドを調べる
分数はRational(,)
round-四捨五入
floor-切り捨て
ceil-切り上げ

・文字列オブジェクト
""特殊文字使える
''特殊文字反映されない
#{}使用方法

・! ?
!破壊的なメソッド
?真偽値

ex)
puts name.upcase!
puts name.empty?
puts name.include?("M")

・配列
ex)
colors =["red","blue","yellow"]
puts colors[0]

範囲の指定もできる
-の値も指定できる
配列の中に配列を入れることもできる

.push("")
<< ""
に書き換えることができる