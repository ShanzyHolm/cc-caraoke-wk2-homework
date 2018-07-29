class Rooms

  attr_reader :name, :people_in_room, :guest, :song

  def initialize(name)
    @name = name
    @people_in_room = 0
    @guest = []
    @song = []

  end

  def guests_in_room()
    return @people_in_room
  end

  def songs_in_room()
    return @song
  end






end







# def guest_check_in(guest)
#   @room << guest
#   return @room
# end

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
