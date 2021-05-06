# Rubyの基礎学習の記録です

## print puts p について
print 通常表示
puts 表示後改行
p ""も表示　デバックなどに使われる

## 変数定数について
変数-書き換え可能
これはどの言語でも同じような感じ

定数-大文字で始める
Rubyは警告を出してくれるが、書き換えが可能になっている

## Ruby言語の特性
Object
Stringclass
FloatClass
Instance
Method

## 数値オブジェクトと主要なメソッド
.class-クラスを調べる
.methods-メソッドを調べる
分数はRational(,)
round-四捨五入
floor-切り捨て
ceil-切り上げ

## 文字列オブジェクト
""特殊文字使える
''特殊文字反映されない
#{}使用方法

## ! ?
!破壊的なメソッド
?真偽値

ex)
puts name.upcase!
puts name.empty?
puts name.include?("M")

## 配列
ex)
colors =["red","blue","yellow"]
puts colors[0]

範囲の指定もできる
-の値も指定できる
配列の中に配列を入れることもできる

.push("")
<< ""
に書き換えることができる

## ハッシュについて
書き方、書き換え例)
socores = {"nagumo" => 200 ,"tokio" =>300}
socores = {:nagumo => 200 ,:tokio =>300}
scores = {nagumo: 200 ,tokio: 300}

配列,ハッシュでよく使うメソッド)
.size
.keys
.values
.has_key?(:nagumo)
.has_key?

## オブジェクトの変換、配列化、ハッシュ化
.to_i
.to_f
.to_s

.to_a
.to_h

## %記法
%W,%w--配列の場合
%Q,q--文字列の囲い方
本来文字列を囲うときは",'を文字として表示する際\が必要だが、
%記法はそのままかける

%s
%d
%f
printf()文字列を表示
sprintf()文字列を返してくれる

## 条件分岐
if elsif end
elsifはeがないことに注意

gets--ユーザ入力

単純な条件分岐はifを後置するとよい

case
    処理
when
    処理
else
    処理
end

gets.chomp
getsは改行が入っているので取り除く

## 繰り返し
while 

while 条件 do
処理
end

times
例)
5.times do |i|
    puts "#{i}:kiryu"
end
3.times{ |i| puts "#{i}:mine"}

for
集合的なオブジェクト（配列やハッシュ）、範囲を表すオブジェクトの要素数分だけ処理を繰り返すことができる命令

forは内部的にはeachを使っている
eachは集合的なオブジェクトのメソッドとして機能する
ex)
for name,score in {kiryu:400,majima:350} do
    puts "#{name}:#{score}"
end
↓
{kiryu:400,majima:350}.each do |name ,score|
    puts "#{name}:#{score}"
end

## ループ処理

loop
.times


break
next-他の言語のcontinueみたいなもの？
