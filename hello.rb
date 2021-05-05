# socores = {"nagumo" => 200 ,"tokio" =>300}
# socores = {:nagumo => 200 ,:tokio =>300}
scores = {nagumo: 200 ,tokio: 300}

p scores[:nagumo]

p scores.size
p scores.keys
p scores.values
p scores.has_key?(:nagumo)
p scores.has_key?(:taguchi)

p scores.to_a.to_h

x =50
y ="3"

p x + y.to_i
p x + y.to_f
p x.to_s + y

=begin
keys

has_key?

sや?に注意
=end