class User
	attr_accessor :first_name, :last_name, :email, :age, :meals_eaten, :thrown, :blend, :sick

	def initialize(first_name, last_name, email, age)
		if first_name == nil || last_name == nil || email == nil || age == nil
		puts "Error. Nil input."
		else
		@first_name = first_name
		@last_name = last_name
		@email = email
		@age = age
		@meals_eaten = 0
		end
	end

	def full_name(first_name, last_name)
		"#{first_name} #{last_name}"
	end

	def eat(nom)
		nom.eaten = true
		puts nom.noise
		self.meals_eaten = self.meals_eaten + 1
	end

	def thrown(food)
		if self.age <= 5
			puts "Acceptable"
		else
		 puts "#{self.first_name} you should know better!"
		end
	end

	def sick(food)
		puts "Grosssss"
		self.meals_eaten = self.meals_eaten - 1
	end

	def blend(food)
		puts "What would you like to blend #{food} with?"
		new_food = gets.chomp
		index = 0
		min = 0
		x = food.name.length
		y = new_food.length
		if x >= y
			min = y
		else
		  min = x
		end
		until index > min
			print "#{food[index]}#{new_food[index]}"
			index = index +1
		end
	end
end

# Snoop = User.new("Snoop", "Dog", "snoop@gmail.com", 6)
# Charlie = User.new("Charlie", "Brown", "Lucysucks@gmail.com", 4)
