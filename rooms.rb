class Rooms

  attr_reader :name, :people_in_room, :guest, :songs

  def initialize(name)
    @name = name
    @people_in_room = []
    @guest = []
    @songs = []
  end

  def guests_in_room()
    return @people_in_room.length()
  end

  def guest_check_in(guest)
    return @people_in_room << guest
  end

  def guest_check_out(guest)
    index = @people_in_room.index(guest)
    @people_in_room.slice!(index, 2)
  end
  # HOW DO I MAKE IT SO IT ISN'T BY THE GUESTS SPECIFIC INDEX NUMBER as if 50 people in room might be done by name, etc  Would that be enumeration .find?

  def songs_in_room()
    return @songs.length()
  end

  def add_song_to_room(song)
    @songs << song
  end

  def room_space(guest)
    if @people_in_room.length() < 1
      guest_check_in(guest)
    else
      return "Sorry no more room."
    end
  end

end







# def guest_check_in(guest)
#   @room << guest
#   return @room
# end
#
# def guest_check_out(room, guest)
#   room = @guests_in_room2.delete(guest)
#   p @guests_in_room2
# end

# def guest_check_in(guest)
#   guests_in_room = << guest
#   @room << guests_in_room
# end

# def guest_check_out(room, guest)
#   room = @guests_in_room2.delete(guest)
#   p @guests_in_room2
# end

# def guest_check_in(guest)
#   @guests_in_room1 = guests.map { |guest| guest[:name]}
#   return @guests_in_room1
# end
