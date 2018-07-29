class Rooms

  attr_reader :name, :room

  def initialize(name)
    @name = name
    # @guest = guest
    @room = 0
    # @room2 = 0
  end

  def guests_in_room()
    return @room
  end

  # def guest_check_in(room, guest)
  #   room = @guests_in_room1 << guest
  #   return @guests_in_room1
  # end

  # def guests_in_room1()
  #   return @room1
  # end
  #
  # def guests_in_room2()
  #   return @room2
  # end

  # def guest_check_out(room, guest)
  #   room = @guests_in_room2.delete(guest)
  #   p @guests_in_room2
  # end

end


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
