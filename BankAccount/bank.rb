class BankAccount
	@@account_count = 0
	attr_accessor :checking, :savings, :money, :number, :rate
	attr_reader :account_number, :interest_rate 
	def initialize
		@number = account_number
		@checking = 500
		@savings = 500 
		@rate = interest_rate
		@@account_count += 1 
	end
	def view_number
		puts "Your Account Number is #{@number}"
		self
	end

	def deposit_checking (money)

		@checking += money
		puts "Current checking balance: #{@checking}"
		self
	end

	def deposit_savings(money)
		@savings += money
		puts "Current savings balance: #{@savings}"
		self
	end

	def withdraw_checking money 
		if @checking < money
			puts "Insuffecient funds"
		else
			@checking -= money
			puts "Your new checking balance #{@checking}"
		end
		self
	end

	def withdraw_savings money 
		if @savings < money
			puts "Insuffecient funds"

		else 
			@checking -= money 
			puts "Your new savings balance #{@savings}"
		end
		self
	end

	def total
		total = (@savings + @checking)*@rate
		puts "Your total is #{total}"
		self
	end 
	
	def account_information
		puts "Your account number is #{@number}"
		total 
		puts "Your checking balance is #{@checking}"
		puts "Your savings balance is #{savings}"
		puts "Your interest rate is #{@rate}"
	end

	private
		def account_number
			@number = Random.new.rand(7**10)
		end 
		def interest_rate
			@rate = 1.02
		end



	end



ba1 = BankAccount.new
ba1.deposit_checking(400).deposit_savings(230)
ba1.account_information



