require("minitest/autorun")
require("minitest/rg")
require_relative("../rooms.rb")
require_relative("../guest.rb")
require_relative("../song.rb")

class RoomsTest < MiniTest::Test

  def setup()
    @guest1 = Guest.new("Suzy")
    @guest2 = Guest.new("Frankie")

    @song = Song.new("Believe", "Cher", "Pop")
    @song1 = Song.new("Can't Help Falling In Love", "Elvis", "Pop")
    @song2 = Song.new("We are the Champions", "Queen", "Classic Rock")

    @room1 = Rooms.new("One")
    @room2 = Rooms.new("Two")
    @rooms = [@room1, @room2]
  end

  def test_room_has_name()
    assert_equal("One", @room1.name())
  end

  def test_rooms_start_empty_of_guests()
    assert_equal(0, @room2.guests_in_room().length())
  end

  def test_check_guest_into_room()
    @room1.guest_check_in(@guest1)
    result = @room1.guests_in_room().length()
    assert_equal(1, result)
  end

  def test_rooms_starts_with_0_songs()
    assert_equal(0, @room1.songs_in_room().length())
  end



end










# def test_check_guest_into_room()
#   result = @room1.guest_check_in(@guest1)
#   assert_equal(1, result.guests_in_room().count())
# end
#
# def test_check_guest_out_of_room()
#   @room2.guest_check_in(@room2, @guest1)
#   @room2.guest_check_in(@room2, @guest2)
#   result = @room2.guest_check_out(@room2, "Frankie")
#   assert_equal(1, result.count())
# end

# def test_check_guest_into_room()
#   result1 = @guests_in_room.guest_check_in(@guest1)
#   assert_equal(1, result1.count())
#   result2 = @room1.guest_check_in(@guests_in_room)
#   assert_equal(1, result2.count())
# end
