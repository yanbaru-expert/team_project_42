class PhpTextsController < ApplicationController
  def index
    @php_texts = Text.where(genre: "Php")
  end

  def show
    @php_text = Text.find(params[:id])
  end
end
