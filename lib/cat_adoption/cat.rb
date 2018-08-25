class CatAdoption::Cat
  attr_accessor :name, :url, :number, :breed, :sex, :dob, :age, :weight, :color, :location, :fee

  @@all = []

  def initialize(name = nil, url = nil, number = nil, breed = nil, sex = nil, dob = nil, age = nil, weight = nil, color = nil, location = nil, fee = nil)
    @name = name
    @url = url
    @number = number
    @breed = breed
    @sex = sex
    @dob = dob
    @age = age
    @weight = weight
    @color = color
    @location = location
    @fee = fee
    @@all << self
  end

  def self.all
    @@all
  end

end
