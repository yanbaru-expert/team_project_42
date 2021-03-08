class MoneyMoviesController < ApplicationController
  def index
    @money_movies = Movie.where(genre: ["Money"])
  end
end
