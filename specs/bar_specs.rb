require 'minitest/autorun'
require 'minitest/rg'

require_relative '../bar'
require_relative '../guests'
require_relative '../karaoke'

class BarTest < MiniTest::Test

  def setup()
    @bar = Bar.new(10, 5)
    @guest = Guest.new("Louise", 20)
    @karaoke = Karaoke.new(5, 3)
  end

  def test_stock_count()
    assert_equal(10, @bar.stock_count())
  end

  def test_drink_limit()
    assert_equal(5, @bar.drink_limit())
  end

  def test_are_there_any_guests_in_bar()
    actual = @bar.guest_in_bar(@guest)
    assert_equal(1, actual)
  end

  def test_empty_bar()
    actual = @bar.empty_bar()
    assert_equal(0, actual)
  end

  def test_drinks_consumed_increases()
    actual = @bar.drinks_consumed()
    assert_equal(1, actual)
  end




end
