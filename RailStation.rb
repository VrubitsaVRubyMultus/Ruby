class Train
def initialize(number, type, vag, work = :work)
	  @vag = vag
	  @number = number
	  @type = type
	  @speed = speed
      @work = work
	  @speed = 0
	  @vag = 1
end
	
	def uskoreniye
		@speed += 10
		puts "speed = #{@speed}"		
		if @speed == 110
			puts "uspokoysya durak!"
		elsif @speed >= 110
			puts "BOOOOM!!!"
			@speed = 0
			@work = :unwork
			puts "speed = #{@speed}"
			puts "ti slomal poezd!"
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
	def vagon-
	  if @vag >= 1 && @speed == 0 && @work == :work
	    @vag -= 1
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
    def vagon+
    	if @speed == 0 && @work == :work
    	@vag += 1
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
end