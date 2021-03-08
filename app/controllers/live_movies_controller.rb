class LiveMoviesController < ApplicationController
  def index
    @live_movies = Movie.where(genre: ["Live"])
  end
end
