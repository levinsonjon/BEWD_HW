class User
	attr_accessor :username, :password, :tweet_count, :usertweets, :followers, :following

userid = ""
$session = nil
@@all_users = []

	def self.all_users
		@@all_users
	end	
	
	def initialize(username, password)
		@username = username
		@password = password
		@tweet = ""
		@tweet_count = 0
		@usertweets = []
		@followers = []
		@following = []
		@@all_users.push(self) #stores a new row in all_users array for each new user
	end
	
	def sign_in(email, password)
		#if email == @@all_users[0](username) && password == @@all_users[0](password) #trying to verify the user against the @@all_users array
			@username = email
			@password = password
			$session = self
		#end
	end

	def sign_up()
		puts "Please enter a valid email address"
		email = gets.chomp
		puts "Please create a password"
		password1 = gets.chomp
		puts "Repeat password"
		password2 = gets.chomp
		if password1 == password2
			puts "Thanks for joining Speeter!"
			@username = email
			@password = password1
			$session = self
		else
			puts "Passwords do not match."
		end
	end

	def sign_out()
		puts "Are you sure you'd like to sign out? (y/n)"
		answer = gets.chomp.downcase

		if answer == "y" || answer == "yes"
			$session = nil
			puts "You have successfully signed out. Thanks for visiting Spitter!"
		end
	end

	def tweet(this_tweet)
		if $session != nil
			if this_tweet.length <= 140
				$this_tweet = this_tweet
				this_tweet = Tweet.new(this_tweet)
				@tweet_count += 1
				@usertweets.push(this_tweet)
			else
				puts "Error: Speet too long. Keep your speets snappy! (under 140 characters)"			
			end
		else
			puts "No speets for you until you login!"
		end
	end

	def like(tweet)
		index = $all_tweets[3].index(tweet)
		likes += 1
		puts "You liked this tweet: #{tweet}"
	end

end

$usertweets = @usertweets

class Tweet
	attr_accessor :this_tweet, :tweet_id, :likes


	@@all_tweets = [] #array for all tweets
	$tweet_info = [] #array for info on each individual tweet
	@@i = 0
	@likes = []
	$likes = @likes
	

	def initialize(this_tweet)
		$this_tweet = this_tweet #made this a global variable so that content from User class ".tweet" method can be passed through. Not sure if this will work because it won't reset for each tweet.
		@tweet_id = @@i
		@@i += 1 #trying to make @tweet_id iterate to create unique tweet_id's per tweet.
		@likes = 0
		$likes = @likes
		$tweet_info.push(self)
		$all_tweets.push(@tweet_info)
	end

	def like_count()
		@likes.count
	end


	def self.all()
		$all_tweets
	end


end
jon = User.new("jon","j")
val = User.new("val","v")