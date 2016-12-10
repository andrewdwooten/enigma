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
        # binding.pry
    end

end

class CharacterMap
    #when organized require Key and Offset
    attr_accessor :map
    def initialize
        @map = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a
       # @map << (' ', '!','@', '#', '$', '%', '^', '&', '*', '(', ')', '[',']', '.', '>', '<', ';', ':', '/', '?', "|") #add \ support
    end
end


class Enigma
    require 'date'
    attr_accessor :offset

    def initialize
        @offset
    end
end