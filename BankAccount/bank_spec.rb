require_relative 'bank'
RSpec.describe BankAccount do 
	it 'has a method for retrieving the checking account balance by depositing a set amount' do
		rb1 = BankAccount.new
		expect(rb1.deposit_checking).to eq('Current checking account balance: 200 ')
	end

	it 'has a method for retrieving total balance' do 
		rb2 = BankAccount.new
		expect(rb2.total).to eq(200)
	end 

	it 'has a method for withdrawing cash from either checking or savings' do 
		rb3 = BankAccount.new
		rb4 = BankAccount.new
		expect(rb3.withdraw_checking).to eq('amount wanted')
		expect(rb4.withdraw_savings).to eq('amount wanted')
	end 

	it 'raises an error when withdrawing too much' do
		rb5 = BankAccount.new
		expect(rb5.withdraw_checking).to eq('Insuffecient funds')
	end
	
	it 'raises an error when printing out number of bank accounts' do 
		expect(@@account_counter).to raise_error(NoMethodError)
	end

	it 'raises an error when user tries to set the interest rate' do
		expect(BankAccount.interest_rate(1.02)).to raise_error(NoMethodError)
	end

	describe 'attributes' do
		before do
			@bank = BankAccount.new
		end

		it "Raises an error when the user tries to set any attribute" do

			expect{@bank.account_counter(5)}.to raise_error(NoMethodError)
      		expect{@bank.account_number(123)}.to raise_error(ArgumentError)
    	 	expect{@bank.checking_balance(2000000)}.to raise_error(ArgumentError)
      		expect{@bank.savings_balance(2000000)}.to raise_error(ArgumentError)
      		expect{@bank.interest_rate(0.02)}.to raise_error(NoMethodError)
      	end
      end
  end
  


