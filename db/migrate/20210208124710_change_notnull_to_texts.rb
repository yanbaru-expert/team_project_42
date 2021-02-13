class ChangeNotnullToTexts < ActiveRecord::Migration[6.1]
  def change
    change_column_null :texts, :genre, false
    change_column_null :texts, :title, false
    change_column_null :texts, :content, false
  end
end
