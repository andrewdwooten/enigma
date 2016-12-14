require_relative 'test_helper'
require './lib/Rotation.rb'

class RotationTest < MiniTest::Test

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

    def test_are_all_the_values_integers
        turn = Rotation.new
        assert true, turn.rotation.each {|number| number.class == Integer}
    end

    def rotations_by_default_are_inequal
        turn_1 = Rotation.new
        turn_2 = Rotation.new
        turn_3 = Rotation.new
        assert false, turn_1.rotation == turn_2.rotation
        assert false, turn_2.rotation == turn_3.rotation
    end
end