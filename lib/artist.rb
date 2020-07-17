class Artist

    @@all = []

    attr_accessor :name, :song

    def initialize(name)
        @name = name
        @@all << self
        @songs = []
  
    end

    def self.all
        @@all
    end

    def add_song(song)
        @songs << song
    end

    def songs
        @songs
    end

    def self.find_or_create_by_name(name)
        self.all.find {|artist| artist.name == name} || self.new(name)
    end

    def print_songs 
        self.songs.each {|song| puts song.name}
    end 
end