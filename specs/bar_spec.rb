require("minitest/autorun")
require("minitest/rg")
require_relative("../bar.rb")

class BarTest < MiniTest::Test

  def setup()
    @bar = Bar.new("CodeClan Caraoke")
  end

  def test_bar_has_name()
    assert_equal("CodeClan Caraoke", @bar.name())
  end

end
