class Artist

    attr_accessor :name
    attr_reader :songs

    @@artists = []

    def initialize(name)
        @name = name
        @songs = []
        @@artists << self
    end

    def add_song(song)
        @songs << song
        song.artist = self
    end

    def add_song_by_name(song_name)
        self.add_song(Song.new(song_name))
    end

    def self.song_count
        Song.all.size
    end

end
