class MP3Importer
  attr_accessor :path
  
  def initialize(filepath)
    @path = filepath
  end
  
  def files
    @files = Dir.entries(@path)
    @files.delete_if { |file| file == "." || file == ".."}
  end
  
<<<<<<< HEAD
  def import
    self.files.each do | filename |
      song = Song.new_by_filename(filename)
      Artist.all << song.artist unless Artist.all.include?(song.artist)
    end
=======
  def import(list_of_filenames)
    list_of_filenames.each{ |filename| Song.new_by_filename(filename) }
>>>>>>> 725816b46ea0d5cfe03b71696959c159a2e54b27
  end
end

class MP3Importer 
  attr_accessor :path 
  def initialize (music_path)
    @path = music_path
  end
  def files
    Dir.chdir(@path)
    Dir.glob("*.mp3")
    files = []
    Dir.foreach(".") do |file|
      files << file
      if file.include?(".mp3")
        end
        files
  end