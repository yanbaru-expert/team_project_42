class ChangeNotnullToMovies < ActiveRecord::Migration[6.1]
  def change
    change_column_null :movies, :genre, false
    change_column_null :movies, :title, false
    change_column_null :movies, :url, false
  end
end
