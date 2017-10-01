require 'minitest/autorun'
require 'minitest/rg'

require_relative '../karaoke'
require_relative '../guests'
require_relative '../song'

class KaraokeTest < MiniTest::Test

  def setup()
    @karaoke = Karaoke.new(5, 3)

    @guest = Guest.new("Louise", 20)
    @song = Song.new("I Will Survive", "Gloria Gaynor")
  end

  def test_room_capacity()
    assert_equal(5, @karaoke.capacity)
  end


  def test_room_entry_fee
    assert_equal(3, @karaoke.entry)
  end

  def test_add_songs_to_room()
    actual = @karaoke.add_songs("Hey Jude")
    assert_equal(4, actual)
  end

  def test_remove_songs_from_room()
    actual = @karaoke.remove_song("Dancing Queen")
    assert_equal("Dancing Queen", actual)
  end

  def test_does_room_include_song()
    actual = @karaoke.include_song("Wonderwall")
    assert(true == actual)
  end

  def test_room_doesnot_include_song()
    actual = @karaoke.include_song("Pump Up the Jam")
    refute(false == actual)
  end

  def test_add_guest_to_room()
    actual = @karaoke.add_guest(@guest)
    assert_equal(1, actual)
  end

  def test_remove_guest_from_room()
    actual = @karaoke.remove_guest("Louise")
    assert_equal(1, actual)
  end

  def test_empty_room()
    @room = ["Louise", "Lynsey", "David"]
    actual = @karaoke.empty_room()
    assert_equal(0, actual)
  end

  # def test_room_full()
  #   @room = ["Louise", "Lynsey", "David", "Alanna", "Steffen"]
  #   actual = @karaoke.room_full(name)
  #   assert_equal("Room full", actual)
  # end


  def test_can_customer_afford_entry()
    actual = @karaoke.afford_entry(@guest)
    assert(true, actual)
  end

# wasn't quite sure if this is the right way to test a sample?
  def test_crowd_responce
    assert_equal("AMAZINGG!!!", @karaoke.crowd_responce)
  end

end
