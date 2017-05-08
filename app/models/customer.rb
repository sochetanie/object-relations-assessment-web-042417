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
