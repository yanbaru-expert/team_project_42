ADMIN_EMAIL = "admin@example.com"
EMAIL = 'test@example.com'
PASSWORD = "password"

# textsテーブルのデータを全削除し、'db/csv_data/text_data.csv'のデータを投入
ImportCsv.text_data

# moviesテーブルのデータを全削除し、'db/csv_data/movie_data.csv'のデータを投入
ImportCsv.movie_data

AdminUser.find_or_create_by!(email: ADMIN_EMAIL) do |admin_user|
  admin_user.password = PASSWORD
  puts "管理者ユーザーの初期データインポートに成功しました。"
end

# テストユーザーが存在しないときだけ作成
User.find_or_create_by!(email: EMAIL) do |user|
  user.password = PASSWORD
  puts 'ユーザーの初期データインポートに成功しました。'
end
