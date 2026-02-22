#じゃんけんの手を配列化
hands = ["グー", "チョキ", "パー"]
janken_result = nil

loop do
  #スタート画面
  puts "じゃんけん..."
  puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"
  choice = gets.to_i


  #入力チェック
  if choice == 3
    puts "じゃんけんを終了します"
    exit
  elsif choice < 0 || choice > 2
    puts "0~3を選択してください"
    next
  end

  #入力値を元にじゃんけんを出力する
  answer = rand(3) #相手のランダム
  puts "ホイ！"
  puts "あなた：#{hands[choice]}を出しました"
  puts "相手：#{hands[answer]}を出しました"
  puts "---------------------------------"

  #じゃんけんの結果による条件分岐
  results = (choice - answer) % 3
  if results == 0
    puts "あいこで..."
    next
  elsif results == 1
    janken_result = :lose
    break
  else
    janken_result = :win
    break
  end
end

#あっち向いてホイ
#あっち向いてホイを配列化
direction = ["上", "下", "左", "右"]

loop do
  puts "あっち向いて〜"
  puts "0(上) 1(下) 2(左) 3(右)"
  selection = gets.to_i

  #入力チェック
  if selection < 0 || selection > 3
    puts "0~3を選択してください"
    next
  end

  #入力値を元にあっち向いてホイを出力する
  response = rand(4)
  puts "ホイ！"
  puts "---------------------------------"
  puts "あなた：#{direction[selection]}"
  puts "相手：#{direction[response]}"
  puts "---------------------------------"

  #あっち向いてホイの結果による条件分岐
  if selection == response
    if janken_result == :lose
     puts "あなたの負けです"
    else
      puts "あなたの勝ちです"
    end
    break
  else
    next
  end
end
