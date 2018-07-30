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

  def test_bar_entry_fee()
    assert_equal(10, @bar.entry_fee())
  end


#   def test_guest_can_pay_entry_fee()
#     @guest1.pay_entry_fee(@bar.entry_fee())
#     assert_equal(10, @guest1.money())
#     assert_equal(10, @bar.till())
#   end
#
#   def test_guest_cannot_pay_entry_fee()
#
#   end
#
end
