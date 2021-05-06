#ユーザからの入力.to_iで数値入力に
score =gets.to_i

if score >75 then
    puts "良い点数です"
elsif score > 60
    puts "もう少し頑張りましょう"
else 
    puts "勉強がたりません"
end

#単純な条件分岐の書き方
puts "良き点数です" if score > 80

=begin


=end