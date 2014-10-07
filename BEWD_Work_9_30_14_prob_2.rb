user_database = []
just_tweet = []
num = 0
100.times do|temp_user_database|
	num = num + 1
user = {id: num, email: "user_#{num}@gmail.com", username: "user_#{num}", age: (18 + rand(57))}
tweets = ["This is my second tweet!"]
temp_user_database = [user, tweets]
user_database.push(temp_user_database)
just_tweet.push(tweets)
end
user_id = 2
puts "=================="
puts "user_#{user_id}'s tweets"
puts "=================="
just_tweet[user_id].each { |content| "tweet: " + content[user_id]  }
puts just_tweet[user_id]