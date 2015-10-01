class Train
  def initialize(number, type, vag, fuel, work = :work, status = :no)
	  @vag = vag
	  @vag = []
	  @number = number
	  @type = type
	  @speed = speed
      @work = work
	  @speed = 0
	  @vag_size = 1
	  @vag_size = vag.size
	  @fuel = fuel
	  @fuel = 0
	  @status = go
	  @status = :no
	  if status == :no
	  	@speed = 0
	  end
	  if speed == 0
	  	@status = :no
	  end
  end
	def uskoreniye
		@speed += 10
		@fuel -= 1
		puts "speed = #{@speed}"
		if @speed == 110
			puts "uspokoysya durak!"
		elsif @speed >= 110
			puts "BOOOOM!!!"
			@speed = 0
			@work = :unwork
			puts "speed = #{@speed}"
			puts "ti slomal poezd!"
	    elsif @fuel == 0
	    	puts "net topliva"
			# sleep 600
			# puts "teper vse gotovo! ezd ostorozhno!"
			# train = work
		end
	end
	def zamedlenye
		@speed -= 10
		puts "speed = #{@speed}"
	end
	def speed
		puts "speed = #{@speed}"
	end
	def fix
		puts "podozhdi"
		sleep 10
		puts "gotovo"
		@work = :work
	end
	def vagon_minus (vagon)
	  if @vag_size >= 1 && @speed == 0 && @work == :work
	    @vag_size -= 1
	    @vag.delete vagon
	  	  puts "vag = #{@vag}"
	  elsif @speed > 0
		  puts "ostanovis"
	  elsif @work == :unwork
		  puts "nuzhna pochinka"
	  elsif @vag <= 1
		  puts "ty ne posmeesh!"
	  else
		  puts "nepoladki"
      end
	end
    def vagon_plus
    	if @speed == 0 && @work == :work
    	  @vag_size += 1
    	  @vag << vagon
	      puts "vag = #{@vag}"
	    elsif @speed > 0
		  puts "ostanovis"
	    elsif @work == :unwork
		  puts "nuzhna pochinka"
	    end
	end
	def vag
		puts "vag = #{@vag}"
	end
	def get_fuel
		@fuel = 100
	end
	def stop
		go = :no
	end
end

class RailStation
  def initialize (name, trains)
    @name = name
    @trains = trains
    @object = object
    @object = []
  end

  def trains
    puts "sdes #{trains} poezdov"
    @object.each { |trains| puts "sdes poezda nomer: #{object.number}"}
  end

  def get(train)
    @trains += 1
    @object << train
  end

  def send(train)
    if @trains >= 1
      @trains -= 1
      @object.delete(train)
    else
      puts "net poezdov"
    end
  end
end
class Rout
  def initialize (a1stop, stop, laststop, stops)
  	@a1stop = a1stop
  	@a1stop = station.new
  	@stop = stop
  	@laststop = laststop
  	@laststop = station.new
  	@stop = []
  	@stops = stops
  	@stops = [@a1stop, @stop, @laststop]
  	@stops.flatten
  	@ways = ways
  	@ways = stops.size - 1
  	@rout = ways + stops
  end
  def watch_rout
  	puts "#{stops}"
  end
  def put(station)
  	@stop << station
  end
  def delete(station)
  	@stop.delete station
  end
end
class Cargotrain < Train
end
class Passengertrain < Train
end
