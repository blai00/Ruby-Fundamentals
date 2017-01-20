require_relative 'mammal'
class Dragon < Mammal
	def initialize
		@health = 170
	end 
	def fly
		@health -= 10 
		puts "Flying... Health: #{@health}"
		self 
	end
	def attack
		@health -= 50
		puts "Attacking... Health #{@health}"
		self
	end 
	def eat
		@health += 20
		puts "Eating... Health #{@health}"
		self 
	end 
	def display_health
		puts "This is a dragon"
		super
		self
	end
	
end

dragon = Dragon.new 
dragon.attack.attack.attack.eat.eat.fly.fly.display_health
