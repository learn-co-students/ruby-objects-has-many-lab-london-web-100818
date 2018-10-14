class Artist

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def songs
    Song.all
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist = self
  end

  def self.song_count
      Song.all.length
  end

end



# #new
#   is initialized with a name (FAILED - 1)
# #name
#   has an attr_accessor for name (FAILED - 2)
# #songs
#   has many songs (FAILED - 3)
# #add_song
#   takes in an argument of a song and associates that song with the artist by telling the song that it belongs to that artist (FAILED - 4)
# #add_song_by_name
#   takes in an argument of a song name, creates a new song with it and associates the song and artist (FAILED - 5)
# .song_count
#   is a class method that returns the total number of songs associated to all existing artists (FAILED - 6)
