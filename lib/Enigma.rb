require './lib/Rotation.rb'
require './lib/CharacterMap.rb'


class Enigma
  attr_accessor :turn, :base_map, :e

	def initialize
    @base_map = CharacterMap.new 
    @turn = Rotation.new
  end

  def encrypt(message)
    encrypted = ""
    message.chars.each_slice(4) { |slice| 
    encrypted << encrypt_1[slice[0]];
    a = encrypt_2[slice[1]]; if a != nil then encrypted << a end;
    b = encrypt_3[slice[2]]; if b != nil then encrypted << b end;
    c = encrypt_4[slice[3]]; if c != nil then encrypted << c end}
    encrypted
  end

  def encrypt_1
    encrypt_1 = (base_map.map).zip(base_map.map.rotate(turn.rotation[0])).to_h
  end
    
  def encrypt_2
    encrypt_2 = (base_map.map).zip(base_map.map.rotate(turn.rotation[1])).to_h
	end

  def encrypt_3
    encrypt_3 = (base_map.map).zip(base_map.map.rotate(turn.rotation[2])).to_h
  end

  def encrypt_4
    encrypt_4 = (base_map.map).zip(base_map.map.rotate(turn.rotation[3])).to_h
  end

  def decrypt(coded)
    @coded = coded
    decoded = ''
    coded.chars.each_slice(4) do |slice| 
    	decoded << encrypt_1.key(slice[0]);
      a = encrypt_2.key(slice[1]); if a != nil then decoded << a else end;
      b = encrypt_3.key(slice[2]); if b != nil then decoded << b else end;
      c = encrypt_4.key(slice[3]); if c != nil then decoded << c else end;
      end
    decoded
  end

  def crack(enemy_message)
    cracked = Enigma.new.decrypt(enemy_message[-7,7])
    until cracked == ('..end..')
			@e = Enigma.new
        cracked = e.decrypt(enemy_message[-7,7])
    end  
      solved = @e.decrypt(enemy_message)
	end
end