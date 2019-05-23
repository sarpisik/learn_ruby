# frozen_string_literal: true

class Book
  # write your code here
  attr_accessor :title

  def title
    words = @title.split(' ').map do |word|
      if %w[the a an and in of].include?(word)
        word
      else
        word.capitalize
      end
    end
    words.first.capitalize!
    words.join(' ')
  end
end
