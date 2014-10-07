user_database = []
num = 0
100.times do|temp_user_database|
	num = num + 1
user = {id: num, email: "user_#{num}@gmail.com", username: "user_#{num}", age: (18 + rand(57))}
tweets = ["I'm user #{num}", "This is my second tweet!"]
temp_user_database = [user, tweets]
user_database.push(temp_user_database)
end
user_id = 2
index = user_database.find_index {|datapoint| datapoint [:username][:id] == user_id}
puts "user_#{user_id} is at index #{index} in the data array"

#This keeps returning "TypeError" messages claiming I'm trying to convert a symbol to an Int
#Really not sure why this is.