class CreateTexts < ActiveRecord::Migration[6.1]
  def change
    create_table :texts do |t|
      t.string :genre, null: false
      t.string :title, null: false
      t.text :content, null: false

      t.timestamps
    end
  end
end
