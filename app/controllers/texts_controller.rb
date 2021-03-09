class TextsController < ApplicationController
  before_action :set_texts, only: :index

  def index
  end

  def show
    @text = Text.find(params[:id])
  end

  private

  def set_texts
    genre = params[:genre]

    search_genre = case genre
      when "php"
        @title = "PHP"
        "Php"
      when "aws"
        @title = "AWS"
        "AWS"
      when nil
        @title = "Ruby/Rails"
        ["Basic", "Git", "HTML&CSS", "Ruby", "Ruby on Rails"]
      end

    @texts = Text.where(genre: search_genre)
  end
end
