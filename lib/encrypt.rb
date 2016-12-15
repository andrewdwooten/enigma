require './lib/Enigma.rb'
    message_file = File.open(ARGV[0], "r")
    to_encrypt = message_file.read
    message_file.close

    e = Enigma.new

    encrypted_message = e.encrypt(to_encrypt)
    encrypted_file = File.open(ARGV[1], "w")
    encrypted_file.write(encrypted_message)
    encrypted_file.close
end
puts  "Created #{ARGV[1]} with rotation #{turn}"