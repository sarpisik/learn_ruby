# frozen_string_literal: true

class Timer
  # write your code here
  attr_accessor :seconds, :minutes, :hours

  def initialize
    @seconds = 0
    @minutes = 0
    @hours = 0
  end

  def time_string
    @minutes = (@seconds / 60)
    @hours = @minutes / 60

    format('%02d:%02d:%02d', @hours, @minutes % 60, @seconds % 60)
  end
end
