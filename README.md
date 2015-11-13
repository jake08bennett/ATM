# ATM Project
  # Purpose
  - The purpose of the ATM project is to create a project with multiple users and a super user who can all access the ATM. The regular users should have an interface where they can withdraw, deposit and check balance. Whereas the superuser should be able to view all the users and make amends to any thing which is incorrect. Overall the ATM should run and be visual in order for users to use and not have any issues with.

# Setup

1) Clone my code
```sh
 $ git clone https://github.com/jake08bennett/ATM.git
```
2) Run my atm file to begin project
```sh
 $ ruby atm.rb
```
3) Input your personal pin (Jake is 1234, Henry is 9999, Sam is 0234)
 ```sh
$ 0234
```
 4) You will be told your name, balance and proceding options (1:Deposit 2:Withdraw 3:Exit)
```sh
 Welcome Sam
 In your account you have $120
 
 Whats operation would you like to perform?(Pick the number related to your request)
 1:Deposit
 2:Withdraw
 3:Exit
```
5) Pick the option you wish to perform and you will either be asked how much you wish to deposit(1) or withdraw(2)
```sh
 $ 1
```
6) You will be asked how much you wish to deposit put how much you wish to
```sh
How much would you like to deposit?
5
```
7) You will be told the amount you deposited/withdrew
```sh
 Deposited $5
```
8) You will be told your new balance
```sh
 125
```
# Questions

1) I do not understand why when creating a class this code is necessary or what it does?
```sh
class Account
    attr_accessor :name, :money, :pin

	def initialize(name, money, pin)
		@name = name
		@money = money.to_i
		@pin = pin
	end
```
2) Why do i need an ATM class? What will be stored there? Is it not just the same as main.rb?
  - To avoid this error in the future for this project can you please explain how many classes there are, what ar they and what should they include?
 
3) When i run my ATM code no matter whos pin i use and try to alter there balance i always alter the 3 persons balance, why is this? (Been stuck with this error and havent been able to work it out)
```sh
$ ruby atm.rb
What is your personal pin?
9999

Welcome Henry
 In your account you have $21
 
 Whats operation would you like to perform?(Pick the number related to your request)
 1:Deposit
 2:Withdraw
 3:Exit
 1
 
 How much would you like to deposit?
5

Deposited $5
125
```
