require 'pry'

class Artist
  attr_accessor :name, :artist, :song

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist = self
  end

  def songs
    Song.all.select { |s| s.artist == self }
  end

  def self.song_count
    Song.all.count
  end
end



# class Artist
#
#   attr_accessor :name, :songs
#
#   @@song_count = 0
#
#   def initialize(name)
#     @name = name
#     @songs = []
#   end
#
#   def add_song(song)
#     @songs << song
#     @@song_count += 1
#     song.artist = self
#   end
#
#   def add_song_by_name(name)    #this method I don't understand
#   song = Song.new(name)
#   @songs << song
#   song.artist = self
#   @@song_count += 1
# end
#
#   def self.song_count
#     @@song_count
#   end
#
# end
