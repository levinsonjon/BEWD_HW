class Food
attr_accessor :name, :noise, :eaten

	def initialize(name, noise)
		@name = name
		@noise = noise
		@eaten = false
	end

	def name
	 	puts "#{name}"
	end

	

end

burger = Food.new("burger", "nom")
pizza = Food.new("pizza", "YES")