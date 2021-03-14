class WatchesController < ApplicationController
  before_action :set_movie

  def create
    current_user.watches.create!(movie_id: @movie.id)
  end

  def destroy
    watch = current_user.watches.find_by(movie_id: @movie.id)
    watch.destroy!
  end

  private

  def set_movie
    @movie = Movie.find(params[:movie_id])
  end
end
