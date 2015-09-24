a = gets.chomp.to_f
c = gets.chomp
b = gets.chomp.to_f

if c == "+"
	y = a + b 
elsif c == "-"
	y = a - b
elsif c == "/"
	y = a / b
elsif c == "*"
	y = a * b
else
	puts "dannye vvedeny neverno"
end

puts "=\n#{y}" if y