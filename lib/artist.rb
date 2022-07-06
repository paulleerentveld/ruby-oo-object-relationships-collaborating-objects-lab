class Artist
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self

    end

    def self.all
        @@all
    end

    def add_song(song_name)
        song_name.artist = self
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def self.find_or_create_by_name(name_input)
        self.all.find {|artist| artist.name == name_input} ? self.all.find {|artist| artist.name == name_input} : self.new(name_input)

    end

    def print_songs
        self.songs.each do |song|
            puts song.name
        end

    end

end
