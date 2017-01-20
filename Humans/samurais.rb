require_relative 'humans'
class Samurai < Huamn
	@@count = 0
	def initialize
		@health = 200
		@@count += 1	
	end 
	def death_blow
		if obj.class.ancestors.include?(Human)
			obj.health = 0
		true 
		else
		false 
		end
	end 

	def meditate
		@health = 200
	end 

	def how_many
		puts "There are #{@@count} samurai"
	end
end 
