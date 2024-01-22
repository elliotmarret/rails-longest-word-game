class GamesController < ApplicationController
  def new
    @letters = Array.new(10) { ('A'..'Z').to_a.sample }
  end

  def score
    @word = params[:word]
    @letters_list = params[:letters].chars
    @response = ''
    @word.chars.each do |letter|
      if @letters_list.include?(letter)
        index_to_remove = @letters_list.index(letter)
        @response = "valid"
      else
        @response = 'invalid'
      end
    end
  end
end
