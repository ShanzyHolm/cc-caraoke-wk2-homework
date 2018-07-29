require("minitest/autorun")
require("minitest/rg")
require_relative("../rooms.rb")
require_relative("../guest.rb")
require_relative("../song.rb")

class RoomsTest < MiniTest::Test

  def setup()
    @guest1 = Guest.new("Suzy")
    @guest2 = Guest.new("Frankie")
    @guests_in_room = []

    @room1 = Rooms.new("One")
    @room2 = Rooms.new("Two")
    @rooms = [@room1, @room2]
  end

  def test_room_has_name()
    assert_equal("One", @room1.name())
  end

  def test_check_guest_into_room()
    result = @room1.guest_check_in(@room1, @guest1)
    assert_equal(1, result.count())
  end

  # def test_check_guest_out_of_room()
  #   result =
  #   assert_equal(0, result.count())
  # end

end


# def test_check_guest_into_room()
#   result1 = @guests_in_room.guest_check_in(@guest1)
#   assert_equal(1, result1.count())
#   result2 = @room1.guest_check_in(@guests_in_room)
#   assert_equal(1, result2.count())
# end
