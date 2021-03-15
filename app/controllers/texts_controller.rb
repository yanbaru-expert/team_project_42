class TextsController < ApplicationController
  def index
    @q = set_texts.ransack(params[:q])
    @texts = @q.result
  end

  def show
    @text = Text.find(params[:id])
  end

  private

  def set_texts
    if params[:q]
      @genre = params[:q]["genre"]
    else
      @genre = params[:genre]
    end

    search_genre = case @genre
      when "php"
        @title = "PHP"
        "Php"
      when "aws"
        @title = "AWS"
        "AWS"
      else
        @title = "Ruby/Rails"
        ["Basic", "Git", "HTML&CSS", "Ruby", "Ruby on Rails"]
      end

    @texts = Text.where(genre: search_genre)
  end
end
