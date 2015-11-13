require_relative "account"

class Atm

	attr_accessor :accounts, :current_user

	def initialize(accounts)
		@accounts = users
	end

	def users
		file = File.open("user.csv", "r")
		users = []
		count = 0
		
		file.each_line do |line|
			a = line.split(',')
			users[count] = Account.new(a[0], a[1], a[2])
			count += 1
		end
	end

	def start
		puts "What is your personal pin? \n"
		pin1 = gets

		for i in 1..users.length
			if pin1 == users[i-1].pin
				puts "\nWelcome " + users[i-1].name 
				puts "In your account you have $" + users[i-1].money.to_s
				puts "\n"
				current_user = users[i-1]
			end
		end

		puts "Whats operation would you like to perform? \n (Pick the number related to your request) \n 1:Deposit \n 2:Withdraw \n 3:Exit "
		request = gets.to_i

		if request == 1
			deposit
		elsif request == 2
			withdraw
		elsif request == 3
			puts "goodbye"
			exit
		else
			puts "not a valid option, goodbye"
			exit
		end 


		def withdraw
			puts "How much would you like to withdraw?"
			amountW = gets
			puts "withdraw $" + amountW.to_s
			current_user.withdraw_value(amountW)
		end

		def deposit
			puts "How much would you like to deposit?"
			amountD = gets
			puts "Deposit $" + amountD.to_s
			current_user.deposit_value(amountD)
		end
	end

end

atm = Atm.new()
