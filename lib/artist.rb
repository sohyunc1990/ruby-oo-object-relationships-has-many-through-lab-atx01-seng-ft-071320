require'pry'
class Artist
  attr_accessor :name, :genre, :songs
  attr_reader :song
  @@all = []
  
  def initialize (name)
    @name = name
    @songs = []
    self.class.all << self
  end
  
  def self.all
    @@all
  end
  
  def new_song(name, genre)
    self.songs << Song.new(name, self, genre)
    binding.pry
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  
end