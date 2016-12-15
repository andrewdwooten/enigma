class Key
	attr_accessor :key

  def initialize
     
  end

  def key
    key = []
    5.times {key << rand(9)}
    @key = key
  end
	
end