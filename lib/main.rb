class Cipher

  def caesar_cipher(string, key) 
    unless !key.between?(1, 26)
      split_str = string.split(//) #splits string into array
      
      str_to_ord = split_str.map {|letter| letter.ord} #converts letters to ordinal number
    
      shift_ord = str_to_ord.map do |num|  #if char is alpha, num is incremented by key, else left alone

        if (num >= 97 && num <= 122)
          ans = num + key
          if ans > 122
            new_ans = 96 + (ans % 122)
            ans = new_ans
          end
        elsif (num >= 65 && num <= 90)
          ans = num + key
          if ans > 90
            new_ans = 64 + (ans % 90)
            ans = new_ans
          end
        else 
          ans = num
        end
        ans
      end
      shift_ord
      ord_to_str = shift_ord.map do |num| 
        num.chr
      end
      ord_to_str.join
    else
      return "Key outside of range"
    end
  
  end
  
  def start_game
    system 'clear'
    print "Type a message to encrypt: "
    text = gets.chomp
    print "\nEnter a cipher key (1-25): "
    shift = gets.chomp.to_i
    puts "\nEncrypted Message: #{caesar_cipher(text, shift)}\n\n"
    play_again
  end

  def play_again
    puts "go again? Y/N"
    again = gets.chomp
    ["y", "Y"].include?(again) ? start_game : exit
  end
end

if __FILE__ == $0
  c = Cipher.new
  c.start_game
end




