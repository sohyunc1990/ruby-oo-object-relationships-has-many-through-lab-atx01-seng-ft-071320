require'pry'
class Genre
  attr_accessor :name, :artist
  attr_reader :song, :genre
  @@all = []
  
  def initialize (name)
    @name = name
    self.class.all << self
  end
  
  def self.all
    @@all 
  end
  
end