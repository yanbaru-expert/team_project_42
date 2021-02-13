class ImportCsv
  def self.import(path)
    list = []
    CSV.foreach(path, headers: true) do |row|
      list << row.to_h
    end
    list
  end

  def self.text_data
    list = import('db/csv_data/text_data.csv')

    puts "text_data.csvのインポート処理を開始"
    Text.destroy_all
    Text.create!(list)
    puts "インポート完了!!"
  end

  def self.movie_data
    list = import('db/csv_data/movie_data.csv')

    puts "movie_data.csvのインポート処理を開始"
    Movie.destroy_all
    Movie.create!(list)
    puts "インポート完了!!"
  end
end
