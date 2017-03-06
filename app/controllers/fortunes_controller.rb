class FortunesController < ApplicationController
  @@page_count = 0
  def tell_your_fortune
    # make an array of fortunes
    fortunes = ["You will be rich", "You will be a happy person", "Not as nice of a prediction"]
    # pick a random one
    fortunes.shuffle!
    @prediction = fortunes[1]
    # show that to the user
    render 'prediction.html.erb'
  end

  def win_the_lotto
    # generate 6 random numbers between 0 and 99
    @numbers = []
    6.times do
      @numbers << rand(0...99)
    end
    render 'lotto.html.erb'
  end

  def beer
    render 'beers.html.erb'
  end

  def counter
    @@page_count += 1
    @view_page_count = @@page_count
    render 'counter.html.erb'
  end
end
