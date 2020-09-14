class Player
  def hand
    puts "数字を入力してください。"
    puts "[0]:グー\n[1]:チョキ\n[2]:パー"
    player_hand = gets.chomp
    while true
      if player_hand == "0" || player_hand =="1" || player_hand =="2"
        return player_hand.to_i
      else
        puts "0〜2の数字を入力してください。"
        puts "[0]:グー\n[1]:チョキ\n[2]:パー"
        player_hand = gets.chomp
      end
    end
  end
end
class Enemy
  def hand
    enemy_hand = rand(3)
  end
end
class Janken
  def pon(player_hand, enemy_hand)
    janken = ["グー", "チョキ", "パー"]
    while true
      if player_hand == enemy_hand
        puts "相手は#{janken[enemy_hand]}です。あいこです。"
        return true
      elsif (player_hand == 1 && enemy_hand == 0) || (player_hand == 2 && enemy_hand == 1) ||  (player_hand == 0 && enemy_hand == 2)
        puts "相手は#{janken[enemy_hand]}です。あなたの負けです。"
        return false
      else
        puts "相手は#{janken[enemy_hand]}です。あなたの勝ちです。"
        return false
      end
    end

  end
end
player = Player.new
enemy = Enemy.new
janken = Janken.new
janken.pon(player.hand, enemy.hand)
