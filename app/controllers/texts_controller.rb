class TextsController < ApplicationController
  before_action :set_texts, only: :index
  before_action :set_q, only: :index

  def index
  end

  def show
    @text = Text.find(params[:id])
  end

  private

  def set_texts
    @genre = params[:genre]
    search_flg = false

    if params[:q]
      search_flg = true
      @genre = params[:q]["genre"]
    end

    search_genre = case @genre
      when "php"
        @title = "PHP"
        "Php"
      when "aws"
        @title = "AWS"
        "AWS"
      when nil
        @title = "Ruby/Rails"
        ["Basic", "Git", "HTML&CSS", "Ruby", "Ruby on Rails"]
      when ""
        @title = "Ruby/Rails"
        ["Basic", "Git", "HTML&CSS", "Ruby", "Ruby on Rails"]
      end

    if search_flg
      search_genre_text = Text.where(genre: search_genre)
      @q = search_genre_text.ransack(params[:q])
      @texts = @q.result
      search_flg = false
    else
      @texts = Text.where(genre: search_genre)
    end
  end

  def set_q
    @q = Text.ransack(params[:q])
  end
end
