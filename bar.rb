class Bar
attr_reader :age_limit, :price, :rooms

  def initialize(age_limit, price)
    @age_limit = age_limit
    @price = price
    @rooms = []
    @next_id = 0
  end

  def get_room_count
    return @rooms.count
  end

  def get_person_count
    return @people.count  
  end

  def add_person_to_room(person, room)
    if (person.age >= @age_limit) && (room.people.count < room.capacity) && (person.money >= @price)
      @next_id += 1
      person.ident = @next_id
      room.people.push(person)
    end
  end

  def remove_person_from_room(id, room)
    # find the person with this id
    to_remove = nil

    for person in room.people
      if person.ident == id
        to_remove = room.people.index(person)
      end
    end

    if to_remove != nil
      room.people.delete_at(to_remove)
    end
  end  

  def add_room(room)
    @rooms.push(room)
  end

end