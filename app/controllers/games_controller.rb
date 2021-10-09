class GamesController < ApplicationController
  def new
    @letters = []
    10.times { @letters << ('A' .. 'Z').to_a.sample}
  end

  def score
    word = params[:word]
    words = JSON.parse(URI.open("https://wagon-dictionary.herokuapp.com/#{word}").read)

  end

  private

  def in_grid?(word, letters)
    switch = true
    word.upcase.chars.each do |char|
      if letters.inclue?(char)
        letters.delete_at(letters.index(char))
      else

      end
    end
  end
end
