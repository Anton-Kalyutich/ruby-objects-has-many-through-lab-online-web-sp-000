class Artist
  
  attr_accessor :name
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    self.class.all << self
  end
  
  def new_song(name, genre)
    new_song = Song.new(name, genre)
  end
  
  
  
end