class Solar_System
	attr_accessor :name, :planets
	def initialize name = 'Andromeda'
		@name = name
		@planets = []
	end 

	def add_planet(planet)
		if planet.class == Planet
			@planets.append(planet)
		end 
	end 

	def count_planets
		@planets.count
	end 

	def super_nova
		@planets.clear
		

class Planet 
	attr_accessor :name, :description, :population
	def initialize name, description, population
		@name = name
		@description = description
		@population = population
	end 
end
