require_relative 'test_helper.rb'
require './lib/CharacterMap.rb'

class CharacterMapTest < MiniTest::Test

    def test_is_it_a_map
        legend = CharacterMap.new
        assert_equal CharacterMap, legend.class
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
end