puts "vvedi snchalo imya i potom rost potom ves"
imya = gets.chomp
rost = gets.chomp.to_f
ves = gets.chomp.to_f
ves_i = rost - 110
if ves_i <= 0 
  puts "zlobnye karliki ne obsluzhivautsa"
else 
  puts "tvoy ves dolzhen byt #{ves_i}"
 end
 y = ves - ves_i
if y > 0 
	puts "hudey na #{y}"
else
	y = ves_i - ves
	puts "tolstey na #{y}"
end