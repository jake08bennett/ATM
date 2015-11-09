require_relative "account"

file = File.open("user.csv", "r")
users = []
count = 0

file.each_line do |line|
	a = line.split(',')
	users[count] = Account.new(a[0], a[1], a[2])
	count += 1
end

puts "What is your personal pin? \n"
pin1 = gets

for i in 1..users.length
	if pin1 == users[i-1].pin
		puts "\nWelcome " + users[i-1].name 
		puts "In your account you have $" + users[i-1].money.to_s
		puts "\n"
	end
end

puts "Whats operation would you like to perform? \n (Pick the number related to your request) \n 1:Deposit \n 2:Withdraw \n 3:Exit "
request = gets.to_i

if request == 1
	users[i-1].deposit
elsif request == 2
	users[i-1].withdraw
elsif request == 3
	puts "goodbye"
	exit
else
	puts "not a valid option, goodbye"
	exit
end 
