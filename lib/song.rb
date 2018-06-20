require 'pry'
class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  
  def self.create
    #instantiates a new Song
    #saves the Song
    #finally returns the Song
    song = self.new
    song.save
    song
  end
  
  def self.new_by_name(name)
    #instantiates a song with a name property
    song = self.new
    song.name = name
    song
  end

  def self.create_by_name(string_name)
    #instantiate 
    #save song
    #return the property of name 
    song = self.new 
    song.name = string_name
    song.save 
    song
  end
  
  def self.find_by_name(name)
    #find a song in @@all
    #search by name
    @@all.find {|song| song.name == name}
  end
  def self.find_or_create_by_name(name)
    if @@all.find_by_name(name) == name
      true
    else self.create_by_name(name) == song
      song
    end
      
    
  end
  
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
