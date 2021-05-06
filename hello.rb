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

majima = User.new("majima")

majima.hello

kiryu = User.new("kiryu")

kiryu.hello

p kiryu.name = "fake_kiryu"

banana = Fruits.new("banana")
grape = Fruits.new("grape")
apple = Fruits.new("apple")

banana.description

Fruits.info
p Fruits::VER

=begin
実行

クラス名前は必ず大文字から
インスタンス変数は、インスタンスの中からであればどこでも使用できる

=end