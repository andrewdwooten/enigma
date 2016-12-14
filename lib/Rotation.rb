require_relative 'Key.rb'
require_relative 'Offset.rb'

class Rotation

    attr_accessor :rotation, :keyring

    def initialize
        key = Key.new.key
         @keyring = key.map.with_index{|x,i|
           (key[i] + key[i+1]).to_i if i < 4}.compact
    end

    def rotation
        turn = Offset.new
        rotation = keyring.map.with_index{|x,i|
          keyring[i] + (turn.offset)[i]}
          @rotation = rotation
    end

end
        