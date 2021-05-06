puts "hello"
puts %Q(hello)
puts %(hello)

puts 'hello'
puts %(hello)

puts "he\"llo"
puts %Q(he"llo)
puts %(he"llo)

puts 'he\'llo'
puts %q(he'llo)

puts %W(base"ball,socc"er)
puts %w(base'ball,socc'er)

=begin
実行結果
hello
hello
hello
hello
hello
he"llo
he"llo
he"llo
he'llo
he'llo
base"ball,socc"er
base'ball,socc'er

=end