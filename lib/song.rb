# Define your Song class such that an individual song is initialized
# with a name, artist and genre.
class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    # returns the total number of songs created.
    def self.count
        @@count
    end

    # returns an array of all of the genres of existing songs. This
    # array should contain only unique genres — no duplicates!
    def self.genres
        @@genres.uniq
    end

    # returns an array of all of the artists of the existing songs.
    # This array should only contain unique artists––no repeats!
    def self.artists
        @@artists.uniq
    end

    # returns a hash in which the keys are the names of each genre.
    # Each genre name key should point to a value that is the number
    # of songs that have that genre.
    def self.genre_count
        @@genres.tally
    end

    # returns a histogram similar to the one above, but for artists
    # rather than genres.
    def self.artist_count
        @@artists.tally
    end

end
