a = gets.chomp.to_f
b = (1..a).to_a
sum = 0.0
index = 0
count = 0
b.each do |e|
	if e.even?
	  sum += e 
	  count += 1
  end
end
puts sum
d = sum / count
puts d