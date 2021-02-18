# textsテーブルのデータを全削除し、'db/csv_data/text_data.csv'のデータを投入
ImportCsv.text_data

# moviesテーブルのデータを全削除し、'db/csv_data/movie_data.csv'のデータを投入
ImportCsv.movie_data

# lineテーブルのデータを全削除し、'db/csv_data/line_data.csv'のデータを投入
Line.destroy_all
ImportCsv.lineimport("db/csv_data/line_data.csv")
