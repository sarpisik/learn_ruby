# frozen_string_literal: true

# write your code here
def echo(text)
  text
end

def shout(text)
  text.upcase
end

def repeat(text, times = 2)
  ([text] * times).join(' ')
end

def start_of_word(text, _index)
  text.slice(0, _index)
end

def first_word(text)
  text.split.first
end

def titleize(text)
  little_words = %w[and over the]
  words = text.split.map do |word|
    if little_words.include?(word)
      word
    else
      word.capitalize
    end
  end
  words.first.capitalize!
  words.join(' ')
end
