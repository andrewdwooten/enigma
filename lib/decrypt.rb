require_relative 'encrypt.rb'
require 'pry'

encrypted_file = File.open(ARGV[0], "r")
to_decrypt = encrypted_file.read
encrypted_file.close



decrypted_message = f.decrypt(to_decrypt)
decrypted_file = File.open(ARGV[1], "w")
decrypted_file.write(decrypted_message)
decrypted_file.close
puts  "Created #{ARGV[1]} with originally assigned key."
