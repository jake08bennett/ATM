class Account

	attr_accessor :name, :money, :pin

	def initialize(name, money, pin)
		@name = name
		@money = money.to_i
		@pin = pin
	end

	def withdraw 
		if @pin == pin
			puts "How much would you like to withdraw?"
			amountW = gets
			puts "withdraw $" + amountW.to_s
			@money -= amountW.to_i
			puts @money
		end
	end

	def deposit
		if @pin == pin
			puts "How much would you like to deposit?"
			amountD = gets
			puts "Deposit $" + amountD.to_s
			@money += amountD.to_i
			puts @money
		end
	end
end