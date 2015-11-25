require_relative "account"
require_relative "atm"

file = File.open("user.csv", "r")
users = []
count = 0

file.each_line do |line|
	a = line.split(',')
	users[count] = Account.new(a[0], a[1], a[2])
	count += 1
end

puts "\nWelcome to the Ruby ATM: Created by British Mastermind Jake Bennett, aka JB"
puts "\nPlease input your pin to begin."

inputpin = gets.to_i

for i in 1..users.length
	if inputpin == users[i-1].pin
		puts "\nWelcome " + users[i-1].name  + "\n" + users[i-1].balance.to_s
		
		def run_action(users, i, inputpin)
			puts "\n What would you like to do? \n 1) Withdraw \n 2) Deposit \n 3) Balance \n(Type end to escape(Prototype)) \n"
			response = gets.to_i
			if response == 1
				users[i-1].withdraw(inputpin)
				run_action(users, i, inputpin)
			elsif response == 2
				users[i-1].deposit(inputpin)
				run_action(users, i, inputpin)
			elsif response.to_i == 3
				users[i-1].balance
				run_action(users, i, inputpin)
			elsif response.to_s == "end"
				return
			else
				puts "There was an error."
				run_action(users, i, inputpin)
			end
		end
		run_action(users, i, inputpin)
	end
end