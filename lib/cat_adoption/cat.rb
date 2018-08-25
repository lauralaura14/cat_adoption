class CatAdoption::Cat
  attr_accessor :name, :url, :bio

  @@all = []

  def initialize(name = nil, url = nil, bio = nil)
    @name = name
    @url = url
    @bio = bio
    @@all << self
  end

  def self.all
    @@all
  end

end
