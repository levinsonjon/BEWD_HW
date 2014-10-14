x = true
user = ""
puts "Welcome to Speeter! \n Enter 1 to sign up. \n\n Already a user? \n Enter 2 to sign in."
sign_option = gets.chomp.to_i
	if sign_option == 1
		User.sign_up
	elsif sign_option == 2
		puts "Please enter email:"
		email = gets.chomp
		puts "Password:"
		password = gets.chomp
		User.sign_in
	else 
		puts "Error. Please enter a valid option"
	end

selection = 0
menuitems = ["write new speet", "read your speets", "like a speet", "follow a user", "sign out"]
until x == false
	puts "******************"
	puts "Speeter Main Menu"
	puts "******************\n"
	puts "Please select an option by entering the correspoonding number key."
	puts "1. Write new speet"
	puts "2. See all speets"
	puts "3. like a speet"
	puts "4. follow a user"
	puts "5. Sign out"

	selection = gets.chomp.to_i
	if selection == 1 || selection == 2 || selection == 3 || selection == 4 || selection == 5
		x == false
	else
		puts "Please enter a valid command."
	end
end

if selection == 1
	puts "Please enter your speet"
	this_tweet = gets.chomp
	User.tweet(this_tweet)

elsif selection == 2
	User.usertweets

elsif selection == 3
	puts "Which speet would you like to like?"
	tweet = gets.chomp
	User.like(tweet)


