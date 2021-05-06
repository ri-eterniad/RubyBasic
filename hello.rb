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

majima = User.new("majima")

majima.hello

kiryu = User.new("kiryu")

kiryu.hello

p kiryu.name = "fake_kiryu"

=begin
実行

クラス名前は必ず大文字から
インスタンス変数は、インスタンスの中からであればどこでも使用できる

=end