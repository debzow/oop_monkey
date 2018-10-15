class Monkey
  attr_accessor :name, :species, :foods_eaten

  def initialize(name, species)
    @name = name.capitalize
    @species = species
    @foods_eaten = []
	end
	
	def introduce
		if (@foods_eaten == [])
			foods_eaten_str = "nothing !"
		else
			foods_eaten_str = foods_eaten.join(",")
		end
		return "Hey! My name is #{@name}, I am a #{@species} and I have eaten #{foods_eaten_str}"
	end

	def eat(food)
		unless ("aeiou".include? food[0]) 
			@foods_eaten << food
		end
	end
end