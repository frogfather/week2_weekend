require('minitest/autorun')
require('minitest/rg')
require('pry-byebug')
require_relative('../bar')
require_relative('../room')
require_relative('../person')
require_relative('../song')

class TestBar < Minitest::Test

  def setup
    @person1 = Person.new("Fred",25, 40.0)
    @person2 = Person.new("Daphne",22, 40.0)
    @person3 = Person.new("Shaggy",27, 40.0)    
    @bar = Bar.new(18, 12.50)
    @room = Room.new(3)
  end

  def test_add_room
    @bar.add_room(@room)
    assert_equal(1, @bar.get_room_count)
  end

  def test_can_add_person
    @bar.add_person_to_room(@person1, @room)
    assert_equal(1, @room.get_person_count)
  end

  def test_add_person_when_full
    @bar.add_person_to_room(@person1, @room)
    @bar.add_person_to_room(@person2, @room)
    @bar.add_person_to_room(@person3, @room)
    person4 = Person.new("Norman", 19, 40.0)
    @bar.add_person_to_room(person4, @room)
    assert_equal(3, @room.people.count)
  end

  def test_add_person_when_underage
    person4 = Person.new("Norman", 17, 40.0)
    @bar.add_person_to_room(person4, @room)
    assert_equal(0, @room.people.count)
  end

  def test_add_person_when_skint
    person4 = Person.new("Norman", 22, 10.0)
    assert_equal(0, @room.people.count)    
  end

  def test_person_id
    @bar.add_person_to_room(@person1, @room)
    @bar.add_person_to_room(@person2, @room)
    @bar.add_person_to_room(@person3, @room)
    assert_equal(3, @room.people[2].ident)  
  end

  def test_delete_person_by_id
    @bar.add_room(@room)
    @bar.add_person_to_room(@person1, @room)
    @bar.add_person_to_room(@person2, @room)
    @bar.add_person_to_room(@person3, @room)
    person_count = @room.people.count
    #binding.pry
    @bar.remove_person_from_room(1, @room)
    assert_equal(person_count-1, @room.people.count)
  end

end