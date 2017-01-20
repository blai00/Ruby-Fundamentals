class AppleTree
	attr_accessor :height, :age, :apples

	def initialize
		@age = 0
		@height = 0 
		@apples = [] 
	end 

	def count_apples
		@apples.count 
	end 

	def year_gone_by
		if @age <= 10
			@age += 1
			@height += 1
		end
		if @age > 10 
			@height -= 0.5
		end 
	end

	def add_apples
		if @age >= 3
			@apples.push('Red Apple')
		end 
		if @age >= 10
			puts 'No apples can be grown'
		end
	end

	def pick_apples
		@apples.clear
	end 



end 