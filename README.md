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

## 関数
・書き方
ex)

def hello(name)
    puts "hello!#{name}"
end

hello("kiryu")
hello "kiryu"


・デフォルト値の設定もできる

ex)
```
def greet(name = "桐生")
    puts "おはよう#{name}"
end
greet()
greet
```

・スコープ関数ないの変数は外からアクセスできない


## 関数について
クラス名前は必ず大文字から
インスタンス変数は、インスタンスの中からであればどこでも使用できる

ex)

```
class User

    def initialize(name)
        @name = name
    end

    def hello
        puts "Hi!#{@name}"
    end
end

majima = User.new("majima")

majima.hello

kiryu = User.new("kiryu")

kiryu.hello
```

## アクセサ

PHPで言うところのセッターゲッターのようなもの

self
```
-JSやPHPのthisのようなもの
ex)
class User

    attr_accessor :name
    #中身はsetter:name=(value)とgetter:name
    #ゲッターだけはattr_reader

    def initialize(name)
        @name = name
    end

    def hello
        puts "Hi!#{@name}"
        puts "Hi!#{self.name}"
        puts "Hi!#{name}"#self.nameの省略形
    end
end

kiryu = User.new("kiryu")

kiryu.hello

p kiryu.name = "fake_kiryu"
```
## クラスメソッド
クラスメソッド
-def self.メソッドめい

クラス変数
-@@を先頭につける

クラス定数
-大文字で定義
```
class User

    attr_accessor :name
    #中身はsetter:name=(value)とgetter:name
    #ゲッターだけはattr_reader

    def initialize(name)
        @name = name
    end

    def hello
        puts "Hi!#{@name}"
        puts "Hi!#{self.name}"
        puts "Hi!#{name}"#self.nameの省略形
    end
end

class Fruits

    attr_accessor:name

    @@count =0

    VER =1.1

    def initialize(name)
        @@count += 1
        @name =name
    end

    def description
        puts "これは#{self.name}"
    end

    def self.info
        puts "VER#{VER}これはクラスメソッド　現在#{@@count}個のインスタンスが作られました"
    end

    

end

```
呼び出し方の例
```
Fruits.info
p Fruits::VER
```


## クラスの継承
書き方やオーバライドの例


```
class Foods

    attr_accessor:name

    @@count =0

    VER =1.1

    def initialize(name)
        @@count += 1
        @name =name
    end

    def description
        puts "これは#{self.name}"
    end

    def self.info
        puts "VER#{VER}これはクラスメソッド　現在#{@@count}個のインスタンスが作られました"
    end

    

end

class Fruits < Foods

    def deli
        puts "#{@name}美味しいな"
    end

    #オーバライド 元のFoodsクラスのdescriptionを
    def description
        puts "これは美味しい#{@name}です"
    end

end

grape = Fruits.new("grape")
grape.deli
grape.description
```

## メソッドのアクセス権
private
protected
public

privateについて
イニシャライズメソッドとクラスの外に書いたメソッドは
自動的にprivateになる
-レシーバーを指定できない
そのためselfは記載しない
ユーザのインスタンスからは呼び出せない


書き方例
```
private
        def foodPrivate
            puts "ptivateメソッドです"
        end
```

## モジュール
・モジュール
インスタンスの作成や継承できない

関連するメソッドや定数などをざっとまとめて
グループ化したいだけのとき便利


ミックスイン
共通の機能を提供する場合に便利
ex)

```
module Debug
    def info 
        puts "#{self.class} debug info.."
    end
end

class Player
    include Debug
end


Player.new.info
```

## 例外処理
予期しない結果が発生した時に、適切に処理をしていく方法
Rubyが用意している例外<br>
自分で例外処理クラスを作ることも可能
 例<br>
```
x =gets.to_i

#自分で例外処理クラスを作ることも可能今回は標準的なものを継承
class MyError < StandardError; end


begin
    if x ==3
        raise MyError
        #raiseは強制的に発生させるメソッド今回使用
    end
    p 100/x
rescue => ex
    p ex.message
    p ex.class
    puts "ストップしました"
ensure
    puts "---END---"
end
```
実行結果
3の場合
```
"MyError"
MyError
ストップしました
---END---
```
下記を加えると
```
rescue MyError
    puts "マイエラーです"
```

```
マイエラーです
---END---
```

0の場合
```
"divided by 0"
ZeroDivisionError
ストップしました
```