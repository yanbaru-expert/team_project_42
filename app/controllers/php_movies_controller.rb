class PhpMoviesController < ApplicationController
  def index
    @php_movies = Movie.where(genre: ["Php"])
  end
end
