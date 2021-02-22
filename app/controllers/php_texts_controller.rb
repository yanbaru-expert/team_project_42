class PhpTextsController < ApplicationController
  def index
    @php_texts = Text.where(genre: "Php")
  end
end
