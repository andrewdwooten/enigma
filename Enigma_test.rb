require "minitest/autorun"
require "minitest/pride"
require_relative 'EnigmaClasses'
require 'pry'


class EnigmaTest < MiniTest::Test

    def test_is_it_an_Enigma
        e = Enigma.new
        assert_equal Enigma, e.class
    end

    def test_is_the_key_a_key
        schrade = Key.new
        assert_equal Key, schrade.class
    end

    def test_is_the_key_five_digits
        schrade = Key.new
        assert_equal 5, schrade.key.count
    end
    
    def test_is_the_key_an_array
        schrade = Key.new
        assert_equal Array, schrade.key.class
    end

    def test_is_the_offset_an_array
        offset = Offset.new
        assert_equal Array, offset.offset.class
    end

    def test_is_the_offset_four_digits
        offset = Offset.new
        assert_equal 4, offset.offset.count
    end

    def test_is_the_map_an_array
        legend = CharacterMap.new
        assert_equal Array, legend.map.class
    end

    def test_does_the_map_contain_lower_alphabet
        legend = CharacterMap.new
        assert true, legend.map.include?('a'..'z')
    end

    def test_does_the_map_contain_all_whole_numbers
        legend = CharacterMap.new
        assert true, legend.map.include?('0'..'9')
    end

    def test_does_the_map_contain_upper_alphabet
        legend = CharacterMap.new
        assert true, legend.map.include?('A'..'Z')
    end
    
    def test_does_the_map_contain_space
        legend = CharacterMap.new
        assert true, legend.map.include?(' ')
    end

end