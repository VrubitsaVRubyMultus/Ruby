module Creator
  attr_accessor :name
end
class NameError < Exception
end
class NumberError < Exception
end
class SpeedError < Exception
end
class UnworkError < Exception
end
class Train
  attr_accessor :number
  include Creator
  @@all = {}
  def self.find(number)
    @@all[number]
  end
  def initialize(number, type, vag, fuel, rout, num, work = :work, status = :no)
    @vag = vag
    @vag = []
    @number = number
    @type = type
    @speed = speed
    @work = :work
    @speed = 0
    @vag_size = 1
    @vag_size = vag.size
    @fuel = fuel
    @fuel = 0
    @status = status
    @status = :no
    @now = now
    @now = station
    @stations = stations
    @stations = rout
    @nexet = nexet
    @nexet = now += 1
    @preveus = preveus
    @preveus = now -= 1
    @@all = all
    @@all[number] = self
    @num = num
    if num != number
      validate!
      @num = number
    end
    validate!
  end
  def validate!
    fail NameError, "gde nomer?!" if number.nil || number.empty
    fail NameError, "nevernaya dlina nomera" if number.size = 9
    true
  end
  def custom
    @vag.each do |v_a_g|
      yield(v_a_g)
    end
  end
  def now
     puts "#{now}"
  end
  def next
     puts "#{nexet}"
  end
  def preveus
     puts "#{preveus}"
  end
  def get_next
     if speed >= 100
      @now += 1
     else
         fail SpeedError, "razgonis"
     end
  end
  def get_preveus 
       if speed >= 100
      @now -= 1
     else
         fail SpeedError, "razgonis"
     end
  end
   def uskoreniye
       @speed += 10
       @fuel -= 1
       puts "speed = #{@speed}"
       if @speed == 110
           fail SpeedError, "uspokoysya durak!"
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
       if status == :no
         @speed = 0
       end
       if speed == 0
         @status = :no
    end
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
    def vagon_plus (vagon)
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
  attr_accessor :name
  @@all = []
  def initialize (name, num, trains, object)
    @name = name
    @trains = trains
    @object = object
    @object = []
    @@all << name
    validate!
    @num = num
    if num != name
      validate!
      @num = name
    end
  end
  def validate!
    fail NameError, "gde nomer?!" if name.nil || name.empty
    fail NameError, "nevernaya dlina nomera" if name.size = 3
    true
  end
  def custom
    @object.each do |obj|
      yield(obj)
    end
  end
  end
  def self.all
    puts all
  end
  def trains
     "sdes #{trains} poezdov"
    @object.each { |trains| puts "sdes poezda nomer: #{object.number}"}
  end

  def get(train)
    @trains += 1
    @object << Train
  end

  def send(train)
    if @trains >= 1
      @trains -= 1
      @object.delete(train)
    else
      fail NumberError, "net poezdov"
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
   def initialize
       @type = :cargo
       super
   end
   def vagon_plus (cargovagon)
       if @speed == 0 && @work == :work
        @vag_size += 1
        @vag << cargovagon
        puts "vag = #{@vag}"
      elsif @speed > 0
        puts "ostanovis"
      elsif @work == :unwork
        fail UnworkError, "nuzhna pochinka"
      end
   end
   def vagon_minus (cargovagon)
    if @vag_size >= 1 && @speed == 0 && @work == :work
      @vag_size -= 1
      @vag.delete cargovagon
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
end
class Passengertrain < Train
   def initialize
       @type = :passenger
       super
   end
   def vagon_plus (passengervagon)
       if @speed == 0 && @work == :work
        @vag_size += 1
        @vag << passengervagon
        puts "vag = #{@vag}"
      elsif @speed > 0
        puts "ostanovis"
      elsif @work == :unwork
        puts "nuzhna pochinka"
      end
   end
   def vagon_minus (passengervagon)
    if @vag_size >= 1 && @speed == 0 && @work == :work
      @vag_size -= 1
      @vag.delete passengervagon
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
end
class Vagon
   attr_accessor :number
   include Creator
   def initialize (place, number, fullnes, num, status = :empty)
       @place = place
       @number = number
       @place = 1000
       @fullnes = fullnes
       @fullnes = []
       @status = status
       @status = :empty
       if place == 0
           @status = :full
       elsif place == 1000
           @status = :empty
       else
           @status = :some
       end
       @num = num
         if num != number
           validate!
           @num = number
         end
       validate!
   end
   private
   def validate!
    fail NameError, "gde nomer?!" if number.nil || number.empty
    fail NameError, "nevernaya dlina nomera" if number.size = 9
    true
  end
end
class Item
  include Creator
  attr_accessor :weight
  def initialize (weight)
    @weight = weight
  end
end
class Person
end
class Cargovagon < Vagon
   def put
       if place == 0
           @status = :full
       elsif place == 1000
           @status = :empty
       else
           @status = :some
       end
       if status == :empty or status == :some
           @place -= 1
           @fullnes << item
       else
           puts "net mesta"
       end
   end
   def empty
       if place == 0
           @status = :full
       elsif place == 1000
           @status = :empty
       else
           @status = :some
       end
       if status == :empty
           puts "net gruza"
       else
           @place += 1
           @fullnes.delete (item)
       end
   end
end
class Passengervagon < Vagon
   def put
       if place == 0
           @status = :full
       elsif place == 1000
           @status = :empty
       else
           @status = :some
       end
       if status == :empty or :some
           @place -= 1
           @fullnes << Person
       else
           puts "net mesta"
       end
   end
   def empty
       if place == 0
           @status = :full
       elsif place == 1000
           @status = :empty
       else
           @status = :some
       end
       if status == :empty
           puts "net ludey"
       else
           @place += 1
           @fullnes.delete (Person)
       end
   end
end
class Terminall
  def initialize (trains, stations, routs, vagons)
    @trains = []
    @trains = trains
    @stations = stations
    @stations = []
    @routs = routs
    @routs = []
    @vagons = vagons
    @vagons = []
  end
  def plus_vagon
    @vagons << Vagon.new
  end
  def plus_rout
    @routs << Rout.new
  end
  def plus_station
    @stations << RailStation.new
  end
  def plus_train
    @trains << Train.new
  end

