#select junken
puts "じゃんけん...(Type number)"
puts "0:ぐー"
puts "1:ちょき"
puts "2:ぱー"
puts "3:戦わない"
yours = gets.to_i
mine = rand(3)
junk = ["ぐー","ちょき","ぱー"]

if yours == 3 then
  puts "See you."
  exit!
elsif yours > 3  then
  puts "Type 0 ~ 3."
  puts "0:ぐー"
  puts "1:ちょき"
  puts "2:ぱー"
  puts "3:戦わない"
  yours = gets.to_i
end


puts "------------"
puts "ほい！"
puts "you: " + junk[yours]
puts "me: " + junk[mine]

#win or lose or draw
if yours-mine == 0 then
  until yours-mine != 0 do
    puts "------------"
    puts "あいこで...(Type number)"
    puts "0:ぐー"
    puts "1:ちょき"
    puts "2:ぱー"
    yours = gets.to_i
    mine = rand(3)
    if 3 < yours then
      puts "------------"
      puts "Type 0 ~ 3."
      puts "あいこで...(Type number)"
      puts "0:ぐー"
      puts "1:ちょき"
      puts "2:ぱー"
      yours = gets.to_i
      mine = rand(3)
    end
  end
puts "------------"
puts "しょ！"
puts "you: " + junk[yours]
puts "me: " + junk[mine]
elsif yours-mine == -1 || yours-mine == 2 then
    puts "You're winner."
    pattern = "winner"
elsif yours-mine == -2 || yours-mine == 1 then
    puts "You're loser."
    pattern = "loser"
end

#hoi
puts "------------"
puts "あっちむいて...(Type number)"
puts "0:Upper"
puts "1:Lower"
puts "2:Left"
puts "3:Right"
yours = gets.to_i
mine = rand(4)
hoi = ["Upper","Lower","Left","Right"]
if 3 < yours then
  puts "Type 0 ~ 3."
  puts "0:Upper"
  puts "1:Lower"
  puts "2:Left"
  puts "3:Right"
  yours = gets.to_i
  mine = rand(4)
end

puts "------------"
puts "ほい！"
puts "you: " + hoi[yours]
puts "me: " + hoi[mine]
case pattern
  when "winner" then
    if yours-mine == 0 then
      puts "============"
      puts "You're winner."
      puts "============"
    else
      puts "============"
      puts "You're loser."
      puts "============"
    end
  when "loser" then
    if yours-mine == 0 then
      puts "============"
      puts "You're loser."
      puts "============"
    else
      puts "============"
      puts "You're winner."
      puts "============"
    end
end