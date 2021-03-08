class TalkMoviesController < ApplicationController
  def index
    @talk_movies = Movie.where(genre: ["Talk"])
  end
end
