require("minitest/autorun")
require("minitest/rg")
require_relative("../song.rb")

class SongTest < MiniTest::Test

  def setup()
    @song = Song.new("Believe", "Cher", "Pop")
  end

  def test_song_has_name()
    assert_equal("Believe", @song.name())
  end

end
