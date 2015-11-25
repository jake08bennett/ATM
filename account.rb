class Account

	attr_accessor :name, :balance, :pin

	def initialize(name, balance, pin)
		@name = name
		@balance = balance.to_i
		@pin = pin.to_i
	end


	def withdraw(pin)
		if pin == @pin
			puts "How much do you want like to withdraw?"
			value = gets.to_i
			if (@balance - value ) >= 0
				puts "You have withdrawn $" + value.to_s
				@balance -= value
				puts "Remaining balance is $" + @balance.to_s
			else
				puts "The user does not have enough money."
			end
		else
			puts "The PIN is incorrect."
		end
	end

	def deposit(pin)
		if pin == @pin
			puts "How much do you want to deposit?"
			value = gets.to_i
			puts "Depositing $" + value.to_s
			@balance += value
			puts "You now have $" + @balance.to_s
		else
			puts "The PIN is incorrect."
		end
	end

	def balance
		puts "You have $" + @balance.to_s
	end

end