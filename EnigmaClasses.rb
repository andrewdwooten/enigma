class Key
    attr_accessor :key

    def initialize
        key = []
        @key = key
        5.times {key << rand(9)}
    end
end

class Offset
    require 'date'
    attr_accessor :offset

    def initialize
        complex_date = Date._parse(Date.today.to_s)
        simple_date = (complex_date.values.join.to_i).abs2
        split_date = (simple_date.to_s.split(""))
        offset = split_date.map(&:to_i)
        @offset = offset[-4..-1]
        #binding.pry
    end

end

class CharacterMap
    #when organized require Key and Offset
    attr_accessor :map, :base

    def initialize
        base = [*('a'..'z'), *('A'..'Z'), *('0'..'9')]
        @map = Hash.new
        base.each.with_index {|x,i| @map.store(x,i) }
        #binding.pry
    end
end

class Rotation
    #require 'key'
    #require 'offset'
    attr_accessor :rotation, :keyring

    def initialize
        base_key = Key.new
        key = base_key.key
         @keyring = key.map.with_index{|x,i|
           (key[i] + key[i+1]).to_i if i < 4}.compact
    end

    def rotation
        turn = Offset.new
        rotation = keyring.map.with_index{|x,i|
          keyring[i] + (turn.offset)[i]}
          @rotation = rotation
          #binding.pry
    end

end
        

class Enigma
    require 'date'
    

    def initialize
        displacement = Rotation.new
    end

    def encrypt
    
    end

end