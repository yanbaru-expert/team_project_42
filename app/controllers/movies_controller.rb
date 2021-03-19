class MoviesController < ApplicationController
  before_action :set_movies, only: :index

  def index

  end

  def set_movies
    genre = params[:genre]

    search_genre = case genre
      when "php"
        @title = "PHP"
        "Php"
      when "talk"
        @title = "全ての勉強会"
        "Talk"
      when "live"
        @title = "プログラミング勉強会"
        "Live"
      when "money"
        @title = "マネタイズ講座"
        "Money"
      when nil
        @title = "Ruby/Rails"
        ["Basic", "Git", "Ruby", "Ruby on Rails"]
      end

    @movies = Movie.page(params[:page])
  end

end
