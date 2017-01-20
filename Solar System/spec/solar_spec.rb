require_relative '../solar'
RSpec.describe Planet do
	it' has a getter and setter for name attribute' do 
		planet1 = Planet.new('Earth','Blue','20')
		expect(planet1.name).to eq('Earth')
		expect(planet1.description).to eq('Blue')
		expect(planet1.population).to eq('20')
	end

	
end

RSpec.describe Solar_System do 
	it'has a method for add_planet' do 
		solar = Solar_System.new
		planet1 = Planet.new('Earth','Blue','20')
		expect(solar.add_planet(planet1)).to eq (true)
	end 

	it 'has a method to count_planets' do 
		solar = Solar_System.new 
		solar.planets = ['Mars' , 'Earth']
		expect(solar.count_planets).to eq(2)
	end 

	it'has a method called super_nova that clears all planets' do
		solar = Solar_System.new 
		solar.planets = ['Mars' , 'Earth']
		expect(solar.super_nova).to eq(true)
	end 
end 