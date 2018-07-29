class Rooms

  attr_reader :name

  def initialize(name)
    @name = name
    # @guest = guest
    @guests_in_room = []
  end

  def guest_check_in(room, guest)
    room = @guests_in_room << guest
    return @guests_in_room
  end

  # def guest_check_out(room, guest)
  #
  # end

end


# def guest_check_in(guest)
#   guests_in_room = << guest
#   @room << guests_in_room
# end
