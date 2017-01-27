require_relative '../stack'
RSpec.describe Stack do
	# it 'has a method to display the values in the array' do 
	# 	stack1 = Stack.new
	# 	stack1.stack = [1,2,3,4]
	# 	expect(stack1.data_store).to eq(1,2,3,4)
	# end

	it 'has an attribute that the last value in the array is 0' do 
		stack1 = Stack.new
		expect(stack1.stack.last).to eq(0)
	end


end
