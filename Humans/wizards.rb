require_relative 'humans'
class Wizard < Human
	def initialize
		super
		@health = 50
		@intelligence = 25
	end

	def heal
		@health += 10
		self
	end 

	def fireball
		if obj.class.ancestors.include?(Human)
			obj.health -= 20
		true 
		else
		false 
		end
	end 
end 
