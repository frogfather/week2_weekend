require('minitest/autorun')
require('minitest/rg')
require('pry-byebug')
require_relative('../room')
require_relative('../person')
require_relative('../bar')
require_relative('../song')



class TestRoom < Minitest::Test
  def setup
    @bar = Bar.new(18, 12.50)
    @room = Room.new(30)
    @person = Person.new("John",25, 40.0)
    @song = Song.new("Deep purple", "Burn", "Rock", 4.5)
  end

  def test_add_song
    @room.add_song(@song)
    assert_equal(1, @room.songs.count)
  end

 

end