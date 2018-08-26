class CatAdoption::Cat
  attr_accessor :number_label, :breed_label, :sex_label, :dob_label, :age_label, :weight_label, :color_label, :location_label, :fee_label, :name, :url, :number, :breed, :sex, :dob, :age, :weight, :color, :location, :fee, :description

  @@all = []

  def initialize(name = nil, url = nil, number_label = nil, breed_label = nil, sex_label = nil, dob_label = nil, age_label = nil, weight_label = nil, color_label = nil, location_label = nil, fee_label = nil, number = nil, breed = nil, sex = nil, dob = nil, age = nil, weight = nil, color = nil, location = nil, fee = nil, description = nil)
    @number_label = number_label
    @breed_label = breed_label
    @sex_label = sex_label
    @dob_label = dob_label
    @age_label = age_label
    @weight_label = weight_label
    @color_label = color_label
    @location_label = location_label
    @fee_label = fee_label
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
    @description = description
    @@all << self
  end

  def self.all
    @@all
  end

end
