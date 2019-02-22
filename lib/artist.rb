require 'pry'
class Artist
  attr_reader :name
  attr_accessor :songs

  @@songs = []

  def initialize(name)
    @name = name
    @songs = []
  end


def songs
  @songs
end


  def add_song(song)
    @songs << song
    @@songs << song
    song.artist = self
  end

  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    @songs << new_song
    @@songs << new_song
    new_song.artist = self
  end

  def self.song_count
    @@songs.length
  end

end
