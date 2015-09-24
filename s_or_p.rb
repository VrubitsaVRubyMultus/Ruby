a = gets.chomp.to_f
b = gets.chomp.to_f
x = gets.chomp
if x == 's'
  s = a * b
  puts "s=#{s}"
end
if x == 'p'
  p = (a + b) * 2
  puts "p=#{p}"
end
