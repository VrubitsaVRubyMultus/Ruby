class Car
  def initialize
  	@speed = speed
  	@status = status
  	@fuel = fuel
  	@maxfuel = maxfuel
  	@maxfuel = 100
  	@maxspeed = maxspeed
  	@maxspeed = 500
  def start
    @speed = 100
  end
  def bystrey
  	@speed += 1
  	if speed >= maxspeed += 1
  		puts "nemogu bistrey"
  	elsif fuel == 0 
  		puts "net topliva"
  	end
  end
  def bystreyX5
  	@speed += 5
  	if speed >= maxspeed += 1
  		puts "nemogu bistrey"
  	elsif fuel == 0 
  		puts "net topliva"
  	end
  end
  def bystreyX10
  	@speed += 10
  	if speed >= maxspeed += 1
  		puts "nemogu bistrey"
  	elsif fuel == 0 
  		puts "net topliva"
  	end
  end
  def beep
  	puts "beep beep"
  end
  def stop
  	@speed = 0
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
  	fuel -= 10
  end
  def kill (people)
  	puts "ah ti podliy utirok!"
  	if people <= 5
  		puts "run fores, run!"
  	elsif people == 5
  		puts "run utirok, run!!!"
  	elsif people >= 5 && people <= 10
  		puts "I HOPE YOU DIE IN A FIRE!!!!!!"
  	else
    puts "illminate watches YOU!"
  	sleep 10
  		loop do
  			puts "DIE!!!!!!!!"
  		end
  	end
  end
end
class SportCar < Car
  def initilize
  	@maxfuel = 500
  	@maxspeed = 5000
  	super
  end
  def start
    puts "wrrrrrroooooooommmmmm..."
    super
  end
  def bystreyX100
  	@speed += 100
  	if speed >= maxspeed += 1
  		puts "nemogu bistrey"
  	elsif fuel == 0 
  		puts "net topliva"
  	end
  def bystreyX500
  	@speed += 500
  	if speed >= maxspeed += 1
  		puts "nemogu bistrey"
  	elsif fuel == 0 
  		puts "net topliva"
  	end
end
class Track < Car
  def initialize
    @items = items
    @items = []
    @maxitems = 1000
    @amountofitems = amountofitems
    @amountofitems 1000
    super
  def load
  @items < item.new
  @amountofitems -= 1
  end
  def watch
  	@items.flatten
  end
end
class item
end