require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")

class GuestTest < MiniTest::Test

  def setup()
    @guest1 = Guest.new("Suzy", 20)
    @guest2 = Guest.new("Frankie", 4)
  end

  def test_guest_has_name()
    assert_equal("Suzy", @guest1.name())
  end

  def test_guest_has_money()
    assert_equal(4, @guest2.money())
  end

end
