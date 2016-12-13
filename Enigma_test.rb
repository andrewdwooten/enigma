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
        assert_equal Hash, legend.map.class
    end

    def test_does_the_map_contain_lower_alphabet
        legend = CharacterMap.new
        assert true, legend.map.has_key?('a'..'z')
    end

    def test_does_the_map_contain_all_whole_numbers
        legend = CharacterMap.new
        assert true, legend.map.has_key?('0'..'9')
    end

    def test_does_the_map_contain_upper_alphabet
        legend = CharacterMap.new
        assert true, legend.map.has_key?('A'..'Z')
    end

    def test_does_the_map_output_index_of_letter
        legend = CharacterMap.new
        assert_equal 0, legend.map['a']
    end

    def test_does_the_keyring_contain_four_numbers
        keys = Rotation.new
        assert true, keys.keyring.count == 4
    end

    def test_is_it_a_rotation
        rotation = Rotation.new
        assert_equal Rotation, rotation.class
    end

    def test_is_the_rotation_an_array
        turn = Rotation.new
        assert_equal Array, turn.rotation.class
    end

    def test_does_the_rotation_have_four_displacement_values
        turn = Rotation.new
        assert = 4, turn.rotation.count
    end
end