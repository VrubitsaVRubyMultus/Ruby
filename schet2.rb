a = gets.chomp.to_f
b = (1..a).to_a
sum = 0.0
index = 0

while index < a
	sum += b[index]
	index += 1
end	
puts sum
c = b.size
d = sum / c
puts d