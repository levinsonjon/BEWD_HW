x = 0
z = 0
puts "Input number: "
y = gets.to_i
	while x <= y
		z = (x + z)
		x = x+1
	end
if z == 0
	puts "Could not compute. Re-run to try again."
else
	puts "Your sum is #{z}"
end
