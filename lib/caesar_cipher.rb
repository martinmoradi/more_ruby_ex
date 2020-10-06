def caesar_cipher(str, num=0)

  new_str = ""
  str.each_byte do |byte|
    if byte.between?(65, 90) # || byte.between?(97, 122) 
    start_range = 65
    new_str << shift(byte, 90, 65, num)
    elsif byte.between?(97, 122) 
    start_range = 97
    new_str << shift(byte, 122, 97, num)
    else 
    new_str << byte
    end
  end
   new_str
end

def shift(byte, limit, start_range, rotation=0)
  new_byte = byte + rotation
  final_byte = 0
  if new_byte > limit
    final_byte = (new_byte - limit - 1 ) + start_range 
  else final_byte = new_byte
  end 
 final_byte.chr
end


caesar_cipher("Bonjour, comment allez vous, zxssfgg", 26)



