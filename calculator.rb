a = gets.chomp.to_f
c = gets.chomp
b = gets.chomp.to_f

if c == "+"
	y = a + b 
elsif c == "-"
	if a <= b
	y = a - b
    else
    puts "netushki"	
    end
elsif c == "/"
	y = a / b
elsif c == "*"
	y = a * b
else
	puts "dannye vvedeny neverno"
end

puts "=\n#{y}"