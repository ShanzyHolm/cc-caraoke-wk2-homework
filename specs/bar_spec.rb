require("minitest/autorun")
require("minitest/rg")
require_relative("../bar.rb")
require_relative("../rooms.rb")

class BarTest < MiniTest::Test

  def setup()
    @room1 = Rooms.new("One")
    @room2 = Rooms.new("Two")
    @rooms = [@room1, @room2]

    @bar = Bar.new("CodeClan Caraoke", @rooms)
  end

  def test_bar_has_name()
    assert_equal("CodeClan Caraoke", @bar.name())
  end

  def test_bar_has_rooms()
    assert_equal(2, @bar.rooms().count())
  end

end
