require_relative 'test_helper.rb'
require './lib/Key.rb'

class KeyTest < MiniTest::Test

  def test_is_the_key_a_key
    house_key = Key.new
    assert_equal Key, house_key.class
  end

  def test_is_the_key_five_digits
  	house_key = Key.new
    assert_equal 5, house_key.key.count
  end
    
  def test_is_the_key_an_array
    house_key = Key.new
    assert_equal Array, house_key.key.class
  end

  def test_keys_are_differently_cut
    house_key = Key.new
    closet_key = Key.new
    assert true, house_key.key != closet_key.key
  end
end

