class  Song 
  attr_accessor :name, :artist 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    save
  end
 
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.name 
    @name 
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
  
  
  def self.new_by_filename(file)
    song = file.split(" - ")[1]
    artist = file.split(" - ")[0]
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song
  end

end
    
    