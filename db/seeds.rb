# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# textsテーブルのデータを全削除し、'db/csv_data/text_data.csv'のデータを投入
ImportCsv.text_data

# moviesテーブルのデータを全削除し、'db/csv_data/movie_data.csv'のデータを投入
ImportCsv.movie_data

# lineテーブルのデータを全削除し、'db/csv_data/line_data.csv'のデータを投入
ImportCsv.line_data

EMAIL = "test@example.com"
PASSWORD = "password"

# テストユーザーが存在しないときだけ作成
User.find_or_create_by!(email: EMAIL) do |user|
  user.password = PASSWORD
  puts "ユーザーの初期データインポートに成功しました。"
end

AdminUser.find_or_create_by!(email: 'admin@example.com') do |admin_user|
  user.password = PASSWORD
  puts "管理者の初期データインポートに成功しました。"
end