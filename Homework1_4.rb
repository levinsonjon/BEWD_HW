x = gets.to_i
while x < 11 
	if x.even? == true
	puts "fakeuser_#{x}_even"
else puts "fakeuser_#{x}_odd"
end
x = x + 1
end