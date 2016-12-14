require_relative 'test_helper.rb'
require './lib/Offset.rb'
require 'pry'

class OffsetTest < MiniTest::Test

    def test_is_the_offset_an_array
        offset = Offset.new
        assert_equal Array, offset.offset.class
    end

    def test_is_the_offset_four_digits
        offset = Offset.new
        assert_equal 4, offset.offset.count
    end

    def test_offsets_created_on_the_same_day_are_equal
        offset_1 = Offset.new
        offset_2 = Offset.new
        assert true, offset_1 == offset_2
    end
end