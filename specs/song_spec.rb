require("minitest/autorun")
require("minitest/rg")
require_relative("../song.rb")

class SongTest < MiniTest::Test

  def setup()
    @song = Song.new("Believe", "Cher", "Pop")
    @song1 = Song.new("Can't Help Falling In Love", "Elvis", "Pop")
    @song2 = Song.new("We are the Champions", "Queen", "Classic Rock")
  end

  def test_song_has_name()
    assert_equal("Believe", @song.name())
  end

  def test_song_has_artist()
    assert_equal("Queen", @song2.artist())
  end

  def test_room_has_genre()
    assert_equal("Pop", @song1.genre())
  end

end
