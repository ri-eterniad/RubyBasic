for i in 15..20 do
    p i
end
#doは省略可能

for color in ["red","blue","green"] do
    puts color
end

for name,score in {kiryu:400,majima:350} do
    puts "#{name}:#{score}"
end

#forは内部的にはeachを使っている
["red","blue","green"].each do | color |
    puts color
end

{kiryu:400,majima:350}.each do |name ,score|
    puts "#{name}:#{score}"
end

=begin
実行

forは内部的にはeachを使っている
eachは集合的なオブジェクトのメソッドとして機能する

=end