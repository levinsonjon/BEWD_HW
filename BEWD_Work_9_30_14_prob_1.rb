user_database = []
num = 0
100.times do|temp_user_database|
	num = num + 1
user = {id: num, email: "user_#{num}@gmail.com", username: "user_#{num}", age: (18 + rand(57))}
tweets = ["I'm user #{num}", "This is my second tweet!"]
temp_user_database = [user, tweets]
user_database.push(temp_user_database)
end
puts user_database[3]