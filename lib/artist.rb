class Artist 
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all
  end 
  
  def new_song(name, self, genre) 
    Song.new(name, genre)
    
  end 
  
  def songs 
    Songs.all.select { |song| song.artist == self }
  end
  
  # Collects genres of songs
  def genres 
    songs.collect { |song| song.genre }
  end 
  
end 


