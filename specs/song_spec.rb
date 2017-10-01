require 'minitest/autorun'
require 'minitest/rg'

require_relative '../song'
require_relative '../guests'

class SongTest < MiniTest::Test

  def setup()
    @song = Song.new("I Will Survive", "Gloria Gaynor")
    @guest = Guest.new("Louise", 20)
  end

  def test_song_name()
    assert_equal("I Will Survive", @song.name())
  end

  def test_song_artist()
    assert_equal("Gloria Gaynor", @song.artist())
  end
end
