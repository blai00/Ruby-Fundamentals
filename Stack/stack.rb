class Stack 
	attr_accessor :stack
	def initialize 
		@stack = []
		@stack.last(0)
	end

	# def data_store
	# 	puts @stack
	# end


end

stack1 = Stack.new
puts stack1