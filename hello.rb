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
=begin
実行

=end