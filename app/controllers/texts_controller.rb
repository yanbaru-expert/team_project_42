class TextsController < ApplicationController
  def index
    genre = params[:genre]

    case genre
    when "php"
      genre = "Php"
      @title = "PHP"
    when "aws"
      genre = @title = "AWS"
    when nil
      genre = ["Basic", "Git", "HTML&CSS", "Ruby", "Ruby on Rails"]
      @title = "Ruby/Rails"
    end

    @texts = Text.where(genre: genre)
  end

  def show
    @text = Text.find(params[:id])
  end
end
