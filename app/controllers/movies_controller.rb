class MoviesController < ApplicationController
  
  def index
    @movies = Movie.where(genre: ["Basic", "Git", "Ruby", "Ruby on Rails"])
  end

end
