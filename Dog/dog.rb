require_relative 'mammal'
class Dog < Mammal
	def pet
		@health += 5
		puts "Petting...Health: #{@health}"
		self
	end

	def walk
		@health -= 1
		puts "Walking...Health: #{@health}"
		self
	end

	def run
		@health -= 10 
		puts "Running...Health: #{@health}"
		self
	end

end

dog = Dog.new
dog.walk.walk.walk.run.run.pet.display_health
