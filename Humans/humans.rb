class Human
	attr_accessor :strength , :intelligence, :stealh, :health
	def initialize
		@strength = 3
		@stealh = 3
		@intelligence = 3
		@health = 100
	end
	def attack
		if obj.class.ancestors.include?(Human)
			obj.health -= 10
		true 
		else
		false 
		end
	end 


end 


