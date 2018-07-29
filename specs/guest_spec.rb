require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")

class GuestTest < MiniTest::Test

  def setup()
    @guest = Guest.new("Suzy")
  end

  def test_guest_has_name()
    assert_equal("Suzy", @guest.name())
  end

end
