class Account

	attr_accessor :name, :money, :pin

	def initialize(name, money, pin)
		@name = name
		@money = money.to_i
		@pin = pin
	end

	def withdraw_value(amountW)
		@money -= amountW.to_i
	end

	def deposit_value(amountD)
		@money += amountD.to_i
	end
end