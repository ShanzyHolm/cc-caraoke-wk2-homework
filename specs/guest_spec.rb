require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")
require_relative("../bar.rb")

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

  def test_guest_can_pay_entry_fee()
    @guest1.pay_entry_fee(@bar)
    assert_equal(10, @guest1.money())
    # assert_equal(10, @bar.till())
  end

end
