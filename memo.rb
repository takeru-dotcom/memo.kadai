require "csv"

  puts "1(新規でメモを作成) 2(既存のメモ編集する)"
  
  memo_type = gets.chomp.to_s

  if memo_type == "1"
    puts "拡張子を除いたファイルを入力してください。"
    memo_title = gets.chomp
    title = memo_title + ".csv"
    puts "メモしたい内容を記入してください"
    puts "完了したら Ctrl + D を押します"
    CSV.open(title,"w") do |content|
      content << readlines
    end
  elsif memo_type == "2"
    puts "編集したいメモの拡張子を除いたファイルを入力してください。"
    memo_edit = gets.chomp
    edit = memo_edit + ".csv"
    puts "編集したい内容を記入してください。"
    puts "完了したら Ctrl + D を押します"
    CSV.open(edit,"a") do |content|
      content << readlines
    end
  end
