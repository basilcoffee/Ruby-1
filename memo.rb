require "csv" # CSVファイル読み込み

puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"

memo_type = gets.to_i # ユーザーの入力値を取得し、数字へ変換しています

if memo_type == 1
  puts "拡張子を除いたファイル名を記入してください"
  file_name = gets.chomp

  puts "メモしたい内容を記入してください"
  memo_contents_1 = gets.chomp
  CSV.open("#{file_name}.csv", "w") do |csv|
    csv << [memo_contents_1]
  end

elsif memo_type == 2
  puts "メモしたい内容を記入してください"
  memo_contents_2 = gets.chomp
  CSV.open("output.csv", "a") do |csv|
    csv << [memo_contents_2]
  end

else
  puts "1か2を入力してください"
end
