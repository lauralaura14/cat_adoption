class CatAdoption::Cat
  attr_accessor :name, :url, :bio

  @@all = []

  def initialize(name, url, bio)
    @name = name
    @url = url
    @bio = bio
    @@all << self
  end

  def self.all
    @@all
  end

end
