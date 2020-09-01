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
    new_song.artist = self
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def genres
    songs.map {|song| song.genre}
  
end