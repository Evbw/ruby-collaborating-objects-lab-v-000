class Artist
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
  end
  
  def add_song(name)
    @songs << name
<<<<<<< HEAD
  end
  
  def self.find_or_create_by_name(name)
    self.all.detect { | artist | artist.name == name } || Artist.new(name)
=======
    name.artist = self
    name
  end
  
  def self.find_or_create_by_name(name)
    self.all.detect { | artist | artist.name == name || Artist.new(name) }
>>>>>>> 725816b46ea0d5cfe03b71696959c159a2e54b27
  end
  
  def print_songs
    @songs.each { | song | puts song.name }
  end

end