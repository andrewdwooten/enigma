class CharacterMap
attr_accessor :map

    def initialize
        @map = [*('a'..'z'), *('A'..'Z'), *('0'..'9'), ' ', '!', '@', '#', '$', '%', '^', '&', '*', '(', ')', '[', ']', ',', '.', '>', '<', ';', ':', '/', '?', '|']
    end
end