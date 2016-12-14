require_relative 'test_helper.rb'
require './lib/Enigma.rb'


class EnigmaTest < MiniTest::Test
    
  def test_is_it_an_Enigma
    e = Enigma.new
    assert_equal Enigma, e.class
  end 

  def test_is_encrypt_1_a_hash
    e = Enigma.new
    assert_equal Hash, e.encrypt_1.class
  end

  def test_encrypt_changes_message_without_dropping_characters
    e = Enigma.new
    encrypted = e.encrypt('blasphemy')
    assert_equal 'blasphemy'.length, encrypted.length
    refute_equal 'blasphemy', encrypted
  end

  def test_encrypt_a_space
    e = Enigma.new
    refute_equal ' ', e.encrypt(' ')
  end

  def test_encrypt_a_sentence
    e = Enigma.new
    sentence = "Hello world just cause"
    encrypted = e.encrypt(sentence)
    assert_equal sentence.length, encrypted.length
    refute_equal sentence, encrypted
  end

  def test_encrypt_symbols
    e = Enigma.new
    symbols = '!@#$%^&*()./| '
    refute_equal symbols, e.encrypt(symbols)
  end

  def test_decrypt_word
    e = Enigma.new
   	word = 'frogger'
    message = e.encrypt(word)
    assert_equal word, e.decrypt(message)
  end

  def test_decrypt_sentence
    e = Enigma.new
    sentence = "Have a nice day!"
    encrypted = e.encrypt(sentence)
    assert_equal sentence, e.decrypt(encrypted)
  end

  def test_crack_the_known_ending
    enemy = Enigma.new
    ending = "..end.."
    enemy_message = enemy.encrypt(ending)
    friendly = Enigma.new
    assert_equal ending, friendly.crack(enemy_message)
  end

  def test_crack_word_with_known_ending
		skip
    enemy = Enigma.new
    message = "awesome sauce ..end.."
    enemy_message = enemy.encrypt(message)
    friendly = Enigma.new
    assert_equal message, friendly.crack(message)
  end


end