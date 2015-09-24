a = gets.chomp.to_f
b = (1..a)
sum = 0
for i in b
	sum += i
end
puts sum
c = b.size
d = sum / c
puts d