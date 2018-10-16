class Artist
  attr_accessor :name, :songs

   @@all = []

def initialize(name)
  @name = name
  @@all << self
  @songs = []
 end

 def add_song(song)
   song.artist = self
   @songs << song
 end

def add_song_by_name(name)
  new_song = Song.new(name)
  add_song(new_song)
end

def self.song_count
  Song.all.length
end

end
