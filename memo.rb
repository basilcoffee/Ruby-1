require "csv" # CSVファイル読み込み

loop do
  puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する / 3 → メモを終了する"

  memo_type = gets.to_i # ユーザーの入力値を取得し、数字へ変換

  if memo_type == 1
    puts "拡張子を除いたファイル名を記入してください"
    file_name = gets.chomp

    puts "メモしたい内容を記入してください"
    memo_contents_1 = gets.chomp
    CSV.open("#{file_name}.csv", "w") do |csv|
      csv << [memo_contents_1]
    end

  elsif memo_type == 2
    puts "編集したいファイル名を記入してください" #既存のメモを編集するためにファイル名を記入してもらう
    file_name = gets.chomp

    puts "メモしたい内容を記入してください"
    memo_contents_2 = gets.chomp
    CSV.open("#{file_name}.csv", "a") do |csv|
      csv << [memo_contents_2]
    end

  elsif memo_type == 3 #3を入力したらif文から抜けてloopも抜ける
    break

  else
    puts "1か2か3を入力してください"
  end

break if memo_type == 3
end
