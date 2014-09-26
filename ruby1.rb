# encoding: utf-8
celsius_flag= ""
C="1"
F="2"
print "Farenheit or Celsius? "
celsius_flag = gets.chomp
	if celsius_flag == "Celsius"
		celsius_flag = C
	elsif celsius_flag == "Farenheit"
		celsius_flag = F
	end
# 	else
# 		puts "Sorry. That wasn't a valid selection. Please try again. \nHint: Input is case-sensitive.\n\nFarenheit or Celsius? "
# 		celsius_flag = gets.chomp
# 	end
# until celsius_flag == C||celsius_flag == F
# end
# if celsius_flag == C||celsius_flag == F
#  print "Thanks for your selection!\n"
# end
if celsius_flag == F
	print "Enter temperature: "
	x= gets.chomp.to_i

	response = "\nHello, the temperature is " + "#{x}⁰F\n"
	print response + "Our thoughts: "
	if x < 0
		"Hypothermia is setting in"
	elsif x < 15
		puts "Wear every piece of clothing you own. Then buy more."
	elsif x < 30
		puts "Must be that Polar Vortex time of year again."
	elsif x < 45
		puts "Why do you live in Boston again?"
	elsif x < 60
		puts "Get a pumpkin spice latte STAT."
	elsif x < 75
		puts "Get outside and enjoy this!"
	elsif x < 90
		puts "Revere beach is calling. Get there before it gets pissed."
	elsif x >= 90
		puts "ughhhhhhhhh sweat doesn't look good on you."
	end


elsif celsius_flag == C
print "Enter temperature: "
	x= gets.chomp.to_i
	response = "\nHello, the temperature is " + "#{x}⁰C\n"
	print response + "Our thoughts: "
	if x < 0
		"Hypothermia is setting in"
	elsif x < 15*(9/5)+32
		puts "Wear every piece of clothing you own. Then buy more."
	elsif x < 30*(9/5)+32
		puts "Must be that Polar Vortex time of year again."
	elsif x < 45*(9/5)+32
		puts "Why do you live in Boston again?"
	elsif x < 60*(9/5)+32
		puts "Get a pumpkin spice latte STAT."
	elsif x < (75*(9/5)+32)
		puts "Get outside and enjoy this!"
	elsif x < (90*(9/5)+32)
		puts "Revere beach is calling. Get there before it gets pissed."
	elsif x >= (90*(9/5)+32)
		puts "ughhhhhhhhh sweat doesn't look good on you."
	end
end