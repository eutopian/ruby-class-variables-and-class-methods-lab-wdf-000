class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    hash = {}
    @@genres.each do |genre|
    hash[genre] == nil ? hash[genre] = 1 : hash[genre] += 1
  end
  hash
  end

  def self.artist_count
    hash = {}
    @@artists.each do |artist|
    hash[artist] == nil ? hash[artist] = 1 : hash[artist] += 1
  end
  hash
  end

end
