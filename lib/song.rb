class Song
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(filename)
<<<<<<< HEAD
    split_name = filename.split(" - ")
    song = self.new(split_name[1])
    artist = Artist.find_or_create_by_name(split_name[0])
    song.artist = artist
=======
    song = filename.split(" - ")[1]
    artist = Artist.find_or_create_by_name(song)
>>>>>>> 725816b46ea0d5cfe03b71696959c159a2e54b27
    artist.add_song(song)
    song
  end
end