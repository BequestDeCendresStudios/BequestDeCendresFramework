module StealthBattleAISystems
  class Player
    def self.observe_enemy
      enemy_actions = File.readlines("lib/data/ai/enemy_actions.txt")
      total_actions = enemy_actions.size.to_i

      chosen_action = File.read("lib/data/ai/chosen_action.txt").strip.to_i

      total_actions.times do
        possible_enemy_actions  = File.readlines("lib/data/ai/possible_ai_actions.txt")
        possible_enemy_actions  = possible_enemy_actions.shuffle
        current_enemy_action = possible_enemy_actions.sample.to_s

        if enemy_actions[chosen_action] == current_enemy_action
          File.open("lib/data/ai/observed_enemy_actions.txt", "a") { |f|
            f.puts enemy_actions[chosen_action]
          }

          ">> The player retained enemy behaviour patterns in longterm memory."

          break
        else
          ">> The player has guessed enemy's behaviours incorrectly."
        end

        sleep(1.5)
      end
    end

    def self.guess_enemy_movement
      enemy_actions = File.readlines("lib/data/ai/enemy_actions.txt")
      total_actions = enemy_actions.size.to_i

      chosen_action = File.read("lib/data/ai/chosen_action.txt").strip.to_i

      total_actions.times do
        observed_enemy_behaviours = File.readlines("lib/data/ai/observed_enemy_actions.txt")
        observed_enemy_behaviours = observed_enemy_behaviours.shuffle
        current_enemy_action      = observed_enemy_behaviours.sample.to_s

        if enemy_actions[chosen_action] == current_enemy_action
          File.open("lib/data/ai/enemy_patterns/observed_enemy_actions.txt", "a") { |f|
            f.puts enemy_actions[chosen_action]
          }

          ">> The player in beserker status countered the enemies behaviour based on previous interactions."

          break
        else
          ">> The player in beserker made has chosen incorrectly."
        end

        sleep(1.5)
      end
    end
  end

  class Enemy
    def self.observe_player
      player_actions = File.readlines("lib/data/user/player_actions.txt")
      total_actions = player_actions.size.to_i

      automated_enemy_choice = 0

      chosen_action = File.read("lib/data/user/chosen_action.txt").strip.to_i

      total_actions.times do
        possible_player_actions  = File.readlines("lib/data/user/possible_player_actions.txt")
        possible_player_actions  = possible_player_actions.shuffle
        current_player_action = possible_player_actions.sample.to_s

        if player_actions[chosen_action] == current_player_action
          File.open("lib/data/ai/observed_player_actions.txt", "a") { |f|
            f.puts player_actions[chosen_action]
          }

          ">> The enemy retained player behaviour patterns in longterm memory."

          break
        else
          ">> The enemy has guessed player behaviours incorrectly."
        end

        sleep(1.5)
      end
    end

    def self.guess_player_movement
      player_actions = File.readlines("lib/data/user/player_actions.txt")
      total_actions = player_actions.size.to_i

      chosen_action = File.read("lib/data/user/chosen_action.txt").strip.to_i

      total_actions.times do
        observed_player_behaviours = File.readlines("lib/data/ai/observed_player_actions.txt")
        observed_player_behaviours = observed_player_behaviours.shuffle
        current_player_action      = observed_player_behaviours.sample.to_s

        if player_actions[chosen_action] == current_player_action
          File.open("lib/data/ai/player_patterns/observed_player_actions.txt", "a") { |f|
            f.puts player_actions[chosen_action]
          }

          ">> The enemy countered the player's behaviour based on previous interactions."

          break
        else
          ">> The enemy made has chosen incorrectly."
        end

        sleep(1.5)
      end
    end

  end
end
