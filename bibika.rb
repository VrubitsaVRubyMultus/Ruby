class Car
  def start
    puts "wrrrrrroooooooommmmmm..."
  end

  def beep
  	puts "beep beep"
  end

  def go(speed, distance)
  	puts "edem"
  	# i = 1000
   #  loop do
   #    i -= 1
   #    puts "..."
   #    break if i == 0
   #  end
  	time = distance / speed
  	puts "..."
  	sleep(time)
  	puts "priyehali"
  end
  def kill (people)
  	puts "ah ti podliy utirok!"
  	if people <= 5
  		puts "run fores, run!"
  	elsif people == 5
  		puts "run utirok, run!!!"
  	elsif people >= 5 and <= 10
  		puts "I HOPE YOU DIE IN A FIRE!!!!!!"
  	else
    puts "illminate watches YOU!"
  	sleep 10
  		loop do
  			puts "DIE!!!!!!!!"
  		end
  	end
end