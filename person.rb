class Person
attr_reader  :name, :age, :money, :fave_song
attr_accessor :ident

  def initialize(name, age, money)
    @ident = 0 #set by bar
    @name = name
    @age = age
    @money = money
    @fave_song = nil
  end

  def set_fave_song(song)
    @fave_song = song
  end


end