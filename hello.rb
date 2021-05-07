x =gets.to_i

#自分で例外処理クラスを作ることも可能今回は標準的なものを継承
class MyError < StandardError; end


begin
    if x ==3
        raise MyError
        #raiseは強制的に発生させるメソッド今回使用
    end
    p 100/x
rescue MyError
    puts "マイエラーです"
rescue => ex
    p ex.message
    p ex.class
    puts "ストップしました"
ensure
    puts "---END---"
end



=begin
実行
3(入力)

"MyError"
MyError
ストップしました
---END---

0(入力)
"divided by 0"
ZeroDivisionError
ストップしました

=end