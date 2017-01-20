require_relative './wizards'
RSpec.describe Wizard do 
	it 'starts off with 50 health and 25 intelligence' do 
		wz1 = Wizard.new
		wz2 = Wizard.new
		expect(wz1.health). to eq(50)
		expect(wz2.intelligence). to eq(25)
	end

	it 'has a method that heals 10 health' do 
		wz3 = Wizard.new
		expect(wz3.heal). to eq(@health += 10)
	end

	it 'has an ancestor chain of human' do
		human = Wizard.ancestors.include?(Human)
		expect(human).to eq(true)
	end 

	it 'has a method that deals 20 damage to other objects' do 
		wz4 = Wizard.new
		expect(wz4.fireball). to eq(obj.health -= 20)
	end 
end
