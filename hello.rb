
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
        foodPrivate
    end

    private
        def foodPrivate
            puts "ptivateメソッドです"
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
        foodPrivate
    end

    def foodPrivate
        puts "privateメソッドを上書き"
    end
end

Foods.new("food").description

grape = Fruits.new("grape")
grape.deli
grape.description
=begin
実行

イニシャライズメソッドとクラスの外に書いたメソッドは
自動的にprivateになる
-レシーバーを指定できない

=end