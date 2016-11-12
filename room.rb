class Room
attr_reader :people, :capacity, :songs
  def initialize(capacity)
    @capacity = capacity
    @people = []
    @songs = []
  end

  def get_person_count
    return @people.count
  end

  def add_song(song)
    @songs.push(song)
  end

end