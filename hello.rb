def hello(name)
    puts "hello!#{name}"
end

hello("kiryu")
hello "kiryu"
#デフォルト値の設定もできる
def greet(name = "桐生")
    puts "おはよう#{name}"
end
greet()
greet

def goodbye(name = "桐生")
    friend ="majima"
    return "グッバイ#{name}"
end

p goodbye()
# p friend スコープ関数ないの変数は外からアクセスできない
=begin
実行



=end