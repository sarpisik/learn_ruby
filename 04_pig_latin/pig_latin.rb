# frozen_string_literal: true

# write your code here
def translate(words)
  translated_words = words.split.map { |word| check_word word }
  translated_words.join(' ')
end

def check_word(word)
 if word.include?('qu')
   index = word.index('qu')
   sub_word=[word.slice(0..index+1),word.slice(index+2..)]
 else
   sub_word=word.split(/([aeiou].*)/)
 end
 sub_word[1]+sub_word[0]+"ay"
end
