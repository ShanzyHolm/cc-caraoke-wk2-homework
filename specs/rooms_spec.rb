require("minitest/autorun")
require("minitest/rg")
require_relative("../rooms.rb")
require_relative("../song.rb")

class RoomsTest < MiniTest::Test

  def setup()
    @room = Rooms.new("One")
  end

  def test_room_has_name()
    assert_equal("One", @room.name())
  end

end
