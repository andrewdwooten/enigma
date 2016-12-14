class Offset
    require 'date'
    attr_accessor :offset

    def initialize
        
    end

    def offset
        complex_date = Date._parse(Date.today.to_s)
        simple_date = (complex_date.values.join.to_i).abs2
        split_date = (simple_date.to_s.split(""))
        offset = split_date.map(&:to_i)
        @offset = offset[-4..-1]
        #binding.pry
    end

end