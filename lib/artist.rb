class Artist
  attr_accessor :name, :song

  @@songs = []

  def initialize(name)
    @name = name
  end

  def songs
    @@songs
  end

  def add_song(song)
    song.artist = self
    @@songs << song
  end

  def add_song_by_name(title)
    song = Song.new(title)
    song.name = title
    song.artist = self
    @@songs << song
  end

  def self.song_count
    @@songs.count
  end

end
