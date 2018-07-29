require("minitest/autorun")
require("minitest/rg")
require_relative("../rooms.rb")
require_relative("../guest.rb")
require_relative("../song.rb")

class RoomsTest < MiniTest::Test

  def setup()
    @guest1 = Guest.new("Suzy")
    # @guest2 = Guest.new("Frankie")
    # @guests = [@guest1, @guest2]

    @room1 = Rooms.new("One")
    # @room2 = Rooms.new("Two")
    # @rooms = [@room1, @room2]
  end

  def test_room_has_name()
    assert_equal("One", @room1.name())
  end

  def test_rooms_start_empty()
    assert_equal(0, @room1.guests_in_room())
  end

  # def test_rooms_start_empty()
  #   assert_equal(0, @room1.guests_in_room1())
  #   assert_equal(0, @room2.guests_in_room2())
  # end

  # def test_check_guest_into_room()
  #   result = @room1.guest_check_in(@guest1)
  #   assert_equal(1, result.count())
  # end
  #
  # def test_check_guest_out_of_room()
  #   @room2.guest_check_in(@room2, @guest1)
  #   @room2.guest_check_in(@room2, @guest2)
  #   result = @room2.guest_check_out(@room2, "Frankie")
  #   assert_equal(1, result.count())
  # end

end


# def test_check_guest_into_room()
#   result1 = @guests_in_room.guest_check_in(@guest1)
#   assert_equal(1, result1.count())
#   result2 = @room1.guest_check_in(@guests_in_room)
#   assert_equal(1, result2.count())
# end
