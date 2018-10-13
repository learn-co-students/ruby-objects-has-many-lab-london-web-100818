class  Song

attr_accessor :song_name, :artist, :name

@@all = []

def initialize(song_name)
    @song_name = song_name
    
    @@all << self
end

def self.all
    @@all
end

def name
   songname = self.song_name
end



def artist_name
    if self.artist
        self.artist.name 
    else nil
    end


end





end