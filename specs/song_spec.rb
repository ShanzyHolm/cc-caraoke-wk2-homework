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

  def test_song_has_artist()
    assert_equal("Cher", @song.artist())
  end

  def test_room_has_genre()
    assert_equal("Pop", @song.genre())
  end

end
