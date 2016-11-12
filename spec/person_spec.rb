require('minitest/autorun')
require('minitest/rg')
require_relative('../person.rb')
require_relative('../song.rb')

class TestPerson < Minitest::Test
  
  def setup
  @person = Person.new("Fred",25, 40.0)
  @song = Song.new("Black Lace", "Agadoo", "Cheesy pop", 4.5)
  end 

def test_person_exists
  assert_equal("Fred", @person.name)
end

def test_set_fave_song
  @person.set_fave_song(@song)
  assert_equal("Agadoo", @person.fave_song.name)
end

end

