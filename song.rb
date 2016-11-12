class Song
attr_reader :band, :name, :genre, :length

  def initialize(band, name, genre, length)
    @band = band
    @name = name
    @genre = genre
    @length = length
  end


end