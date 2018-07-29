require("minitest/autorun")
require("minitest/rg")
require_relative("../bar.rb")
require_relative("../rooms.rb")
require_relative("../guest.rb")

class BarTest < MiniTest::Test

  def setup()
    @guest1 = Guest.new("Suzy", 20)
    @guest2 = Guest.new("Frankie", 4)

    @room1 = Rooms.new("One")
    @room2 = Rooms.new("Two")
    @rooms = [@room1, @room2]

    @bar = Bar.new("CodeClan Caraoke Bar", @rooms)
  end

  def test_bar_has_name()
    assert_equal("CodeClan Caraoke Bar", @bar.name())
  end

  def test_bar_has_rooms()
    assert_equal(2, @bar.rooms().count())
  end

end
