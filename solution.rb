# Please copy/paste all three classes into this file to submit your solution!
class Customer

  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
  	@@all
  end

  def self.find_by_name(name)
  	self.all.find {|person| person == name}
  end

  def self.find_all_by_first_name(name)
  	self.all.select {|person| person.first_name == name}
  end

  def self.all_names
  	return @@all
  end

  def self.add_review(restaurant, content)
  	new_review =  Review.new(restaurant, content, self)

  end


end



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



class Restaurant

  attr_accessor :name, :reviews, :customers

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
  	@@all
  end

  def self.find_by_name(name)
  	self.all.find {|rest| rest.name == name}
  end

  def reviews
  	self.reviews
  end

  def customers
  	self.customers
  end


end

