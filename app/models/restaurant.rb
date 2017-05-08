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
