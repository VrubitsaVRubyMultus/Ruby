def terminal
	@input = input
	input = gets
end
terminal
protected
class World
	def initialize
	  @name = name
	  @locations = locations
	  @locations = [Village.new, Wood.new Temple.new]
	  @statusw = statusw
	  @statusw = :evil
	  @monsters_num = 150
	  @monsters_num = monsters_num
	  @monsters = monsters
	  @monsters = []
	  150.times { @monsters << Monster.new }
	  @people_num = 2
	  @people_num = people_num
	  @people = people
	  @people = [Hero, Tex.new]
	end
end
def loadw
	@people_num = people.size
	@monsters_num = monsters
	if people_num > monsters_num
		@statusw = :good
	end
end
class Location
	def initialize 
		@name = name
		@status = status
		@monsters = monsters
		@chance = chance
		@luck = luck
		@type = type
		@size = size
		@locations = locations
		@locations = []
	end
end
class Person
	def initialize
	  @helth = helth
	  @damage = damage
	  @profession = profession
	  @memory = memory
	  @memory = []
	  @mood = mood
	  @mood = :fear
	  @statusp = statusp
	  @statusp = [:bad]
	  @propertyp = propertyp
	  @propertyp = []
	end
end
class Tex < Warrior
end
def loading
	loadw
end
