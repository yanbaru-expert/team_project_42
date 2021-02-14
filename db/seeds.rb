# textsテーブルのデータを全削除し、'db/csv_data/text_data.csv'のデータを投入
ImportCsv.text_data

# moviesテーブルのデータを全削除し、'db/csv_data/movie_data.csv'のデータを投入
ImportCsv.movie_data
AdminUser.find_or_create_by!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?