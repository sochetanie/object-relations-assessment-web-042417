class Review
  
  attr_accessor :restaurant, :customer

  @@all = []

	def initialize(restaurant, customer)
		@restaurant, @customer = restaurant, customer
		@all << self
	end

	def self.all
		@@all
	end

	def customer
		self.customer
	end

	def restaurant
		self.restaurant
	end


end

