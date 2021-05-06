i =0

while i < 10 do
    puts "#{i}:hello"
    i = i +1
    puts i
    i += 1 #上と同じ
    puts i
end

puts "\n"

5.times do |i|
    puts "#{i}:kiryu"
end
3.times{ |i| puts "#{i}:mine"}
=begin
実行結果
0:hello
1
2
2:hello
3
4
4:hello
5
6
6:hello
7
8
8:hello
9
10

0:kiryu
1:kiryu
2:kiryu
3:kiryu
4:kiryu
0:mine
1:mine
2:mine

=end