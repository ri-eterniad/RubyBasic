p "name: %s" % "kiryu"
p "name: %8s" % "kiryu"
p "name: %-8s" % "kiryu"

p "id: %d" % 4
p "id: %4d" % 4
p "id: %-4d" % 4

p "score: %10.5f" % 4.6567
p "score: %3.8f" % 4.6567
p "score: %-10.5f" % 4.6567



#値が複数の場合
p "id: %3d, rate: %4.2f" % [12,3.548]

#printf sprintf
printf("name:%10s\n","kiryu")

puts sprintf("name:%10s\n","kiryu")

puts sprintf("nameId:%05d, rate: %5.2f",478 , 5.9848)



=begin
# "文字列" % 値
# %s
# 実行結果

# %d
# %f

実行結果
"name: kiryu"
"name:    kiryu"
"name: kiryu   "
"id: 4"
"id:    4"
"id: 4   "
"score:    4.65670"
"score: 4.65670000"
"score: 4.65670   "
"id:  12, rate: 3.55"
name:     kiryu
name:     kiryu
nameId:00478, rate: $5.2f
yoshi@YoshihiakanoMBP src % ruby hello.rb
"name: kiryu"
"name:    kiryu"
"name: kiryu   "
"id: 4"
"id:    4"
"id: 4   "
"score:    4.65670"
"score: 4.65670000"
"score: 4.65670   "
"id:  12, rate: 3.55"
name:     kiryu
name:     kiryu
nameId:00478, rate:  5.98

=end