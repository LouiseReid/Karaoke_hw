require 'minitest/autorun'
require 'minitest/rg'

require_relative '../guests'

class GuestTest < MiniTest::Test

  def setup()
    @guest = Guest.new("Louise", 20)
  end

  def test_guest_has_name()
    assert_equal("Louise", @guest.name())
  end

  def test_guest_has_money()
    assert_equal(20, @guest.money())
  end


end
