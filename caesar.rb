#used to find the index of letters
def find_index(index)
  if index <= 25
    index
  else
    index -= 26
  end

end

def caesar_cipher(sentence, shift)
#each word put into seperate array
letters = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z]
i = 0

while i < sentence.length
  if /[A-Z]/.match(sentence[i])
    #find the index of letter
    same_letter = find_index(letters.index(sentence[i].downcase) + shift)
    #change the letter
    sentence[i] = letters[same_letter].upcase
  elsif  !letters.index(sentence[i])
    sentence[i]
  else
  #find the index of letter
  same_letter = find_index(letters.index(sentence[i]) + shift)
  #change the letter
  sentence[i] = letters[same_letter]
end
i += 1
end
puts sentence
end
