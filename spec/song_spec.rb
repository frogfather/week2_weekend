require('minitest/autorun')
require('minitest/rg')
require_relative('../song')

class TestSong < Minitest::Test

  def setup
    @song = Song.new("Europe", "The final countdown", "80s", 4.5)
  end

  def test_song_title
    assert_equal("The final countdown", @song.name)
  end
end