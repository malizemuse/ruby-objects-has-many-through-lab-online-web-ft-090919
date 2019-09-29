class Genre 
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def songs 
    Songs.all.select { |song| song.genre == self }
  end 
  
  def artists 
    songs.select { |song|  }
  end 
  
end 


