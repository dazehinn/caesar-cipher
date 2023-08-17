def caesar_cipher(text, shift)
  text_array = text.split('')
  coded_array = text_array.map do |letter|
    code = letter.ord + shift
    if letter.between?('A', 'Z')
      new_code = code > 'Z'.ord ? code - 26 : code
    elsif letter.between?('a', 'z')
      new_code = code > 'z'.ord ? code - 26 : code
    else
      new_code = letter.ord
    end
  end
  
  cipher_text = coded_array.map{|code| code.chr}.join('')
  puts cipher_text
end

caesar_cipher('What a string!', 5)