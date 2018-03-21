class Main

  def encrypt(message, key)
    encryptedMessage = "";

    lastIndex = message.length - 1

    for i in 0..lastIndex
      char = message[i]
      char = (char.ord + key).chr
      encryptedMessage << char
    end

    return encryptedMessage
  end

  def decrypt(encryptedMessage, key)
    decryptedMessage = ""

    lastIndex = encryptedMessage.length - 1

    for i in 0..lastIndex
      char = encryptedMessage[i]
      char = (char.ord - key)
      decryptedMessage << char
    end

    return decryptedMessage
  end
end


main = Main.new;
encryptedMsg = main.encrypt("Felipe", 3)
puts(encryptedMsg)
decryptedMsg = main.decrypt(encryptedMsg, 3)
puts(decryptedMsg)
