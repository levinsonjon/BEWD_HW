# puts "******************"
# puts "Problem 1"
# puts "******************\n"
# puts "Please enter your name?"
# x = gets.chomp
# puts "Hello #{x}"

# puts "******************"
# puts "Problem 2"
# puts "******************\n"
# puts "Please enter your name?"
# x = gets.chomp
# if x == "Jack" or x == "Jill"
# 	puts "Hello #{x}"
# else
# end

# puts "******************"
# puts "Problem 3"
# puts "******************\n"
# x = 0
# sum = 0
# puts "What's your favorite number?"
# n = gets.chomp.to_i
# while x < n
# x = x + 1
# sum = x + sum
# end
# puts "sum is #{sum}"

# Problem 4
# x = 0
# sum = 0
# product = 1
# puts "What's your favorite number?"
# n = gets.chomp.to_i
# puts "add or multiply"
# choice = gets.chomp
# if choice == "add"
# 	while x < n
# 	x = x + 1
# 	sum = x + sum
# 	end
# 	puts "sum is #{sum}"
# elsif choice == "multiply"
# 	while x < n
# 		x = x + 1
# 		product = x * product
# 	end
# 	puts "produc is #{product}"
# end

#Secret number
# puts "******************"
# puts "Secret Number"
# puts "******************\n"
# answer = 42
# counter = 1
# guess = 0
# puts "Pick a number. Any number"
# guess = gets.chomp.to_i
# while counter <3
# if guess == answer
# 	puts "That's correct!"
# 	puts "You got it on try ##{counter}"
# 	counter = 3
# 		elsif guess > answer
# 			puts "Too high. Try again."
# 			guess = gets.chomp.to_i
# 			counter = counter + 1
# 			if guess == answer and counter == 3
# 			puts "That's correct!"
# 			puts "You got it on try ##{counter}"
# 			elsif guess != answer and counter == 3
# 			puts "Womp womp. You lose. Better luck next time."
# 			end
# 		elsif guess < answer
# 			puts "Too low. Try again."
# 			guess = gets.chomp.to_i
# 			counter = counter + 1
# 			if guess == answer and counter == 3
# 			puts "That's correct!"
# 			puts "You got it on try ##{counter}"
# 			elsif guess != answer and counter == 3
# 			puts "Womp womp. You lose. Better luck next time."
# 			end
# 		end
# 	end

#Sparkle Magic
# puts "******************"
# puts "Sparkle Magic"
# puts "******************\n"
# puts "Enter Text for Sparkly Magic"
# str = gets.chomp
# sparkle_array = str.split(" ")
# maxlength = 0
# sparkle_array.each do |element|
# 	if element.length > maxlength
# 		maxlength = element.length
# 	end
# end
# sparkle_array.each do |element|
# difference = maxlength - element.length
# difference.times do
# 	element << " "
# end
# end 
# sparkle_array.map do |star|
# star.insert(0, "*")
# 	star << "*"
# end

# (maxlength + 2).times do
# 	print "*"
# end
# puts "\n"

# sparkle_array.each {|print| puts print}

# (maxlength + 2).times do
# 	print "*"
# end

#Modulus Numbers
# puts "******************"
# puts "Modulus Numbers"
# puts "******************\n"

# x=1
# while x<=75
# 	if x %3 ==0 && x %5 == 0
# 		puts "BEWDRocks"
# 	elsif x % 5 ==0 && % 3 !=0
# 		puts "Rocks"
# 	elsif x % 3 ==0 && % 5 !=0
# 		puts "BEWD"
# 	else
# 		puts x
# 	end
# 	x = x+1
# end

#Weather Stats
puts "******************"
puts "Weather Stats"
puts "******************\n"
temp_spread_total = 0
min_temp_spread = 1000000
new_line = []
weather_data_split = []
difference = []
weather_data = File.read("C:/BEWD/BEWD/BEWD_Week_2/weather.dat")
weather_data.each_line do |one_line|
new_line = one_line.split(" ").map {|string| string.to_i}
	if new_line[0].to_i > 0
	difference.push new_line[1]-new_line[2]
	end
end
index = difference.rindex(difference.min)
puts "Smallest temp spread was on day #{index+1}."
