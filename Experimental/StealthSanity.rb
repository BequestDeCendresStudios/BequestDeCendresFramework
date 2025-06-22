#############################################################################################
# Standard methods for player autonomy in the game.                                         #
#############################################################################################
module StealthSanity
  class SanityMetric
    def self.full_player_control
      #player_heal = $healing_rate

      # Loop for full player control

      # Least damaging, yet most efficient healing and other maintence.

      conditions = {
        "Epee"  => "Ishi",
        "Ishi"  => "Bache",
        "Bache" => "Epee",
      }

      bezerker_chance = ["autonomy", "autonomy", "autonomy", "autonomy"]

      chance_of_bezerker = bezerker_chance.sample

      if chance_of_bezerker == "autonomy"
        print "Player Choice >> "; @choice = gets.chomp
      else
        puts "Player lost control of the MC..."

        sleep(1.5)

        @choice = File.readlines("lib/data/ai/player_patterns/observed_player_actions.txt").sample.strip.to_s
      end

      @cchoice  = File.readlines("lib/data/ai/enemy_patterns/observed_enemy_actions.txt").sample.strip.to_s

      puts "The enemy chose: #{@cchoice}"

      if    @choice == "Epee"
        open("lib/input/user/user_choice.txt", "w") { |f|
          f.puts "0"
        }

        # Records a history of player actions.
        open("lib/data/user/chosen_action.txt", "a") { |f|
          f.puts "0"
        }

        # Allows enemey to learn about player patterns.
        File.open("lib/data/ai/player_patterns/observed_player_actions.txt", "a") { |f|
          f.puts "Epee"
        }
      elsif @choice == "Ishi"
        open("lib/input/user/user_choice.txt", "w") { |f|
          f.puts "1"
        }

        # Records a history of player actions.
        open("lib/data/user/chosen_action.txt", "a") { |f|
          f.puts "1"
        }

        # Allows enemey to learn about player patterns.
        File.open("lib/data/ai/player_patterns/observed_player_actions.txt", "a") { |f|
          f.puts "Ishi"
        }
      elsif @choice == "Bache"
        open("lib/input/user/user_choice.txt", "w") { |f|
          f.puts "2"
        }

        # Records a history of player actions.
        open("lib/data/user/chosen_action.txt", "a") { |f|
          f.puts "2"
        }

        # Allows enemey to learn about player patterns.
        File.open("lib/data/ai/player_patterns/observed_player_actions.txt", "a") { |f|
          f.puts "Bache"
        }
      elsif @choice == "Sleep"
        open("lib/input/user/user_choice.txt", "w") { |f|
          f.puts "2"
        }

        # Records a history of player actions. This one defaults to bache even though its a distinct action.
        open("lib/data/user/chosen_action.txt", "a") { |f|
          f.puts "2"
        }

        # Allows enemey to learn about player patterns.
        File.open("lib/data/ai/player_patterns/observed_player_actions.txt", "a") { |f|
          f.puts "Bache"
        }
      end

      puts " "
      sleep(1.5)

      # Experiment with using an enemy that learns from player's decisions.'
      #ai_decision

      if conditions[@choice] == @cchoice
        puts "You were struck by the enemy!"

        $player_struck = $player_struck + 1

        # The amount of damage player gets is based on the enemies attack power.
        #$player_hp = $player_hp - $enemy_atk
        enemy_damage_rate
      elsif @cchoice == @choice
        puts "You reach a stalemate."

        $stalemates = $stalemates + 1
      elsif conditions[@cchoice] == @choice
        puts "You struck the enemy!"

        $enemy_struck = $enemy_struck + 1

        # The amount of damage enemy recieves is based on the player's attack power.
        #$enemy_hp = $enemy_hp - $player_atk
        player_damage_rate
      elsif @choice == "Sleep"
        puts "\e[38;2;187;127;118mYou've opted to stay at an inn...'\e[0m"

        sleep(1.5)

        stay_at_inn
      else
        puts "\e[38;2;187;127;118m#{@choice} is not a valid option\e[0m"
      end

      observe_enemy
      observe_player

      sleep(1.5)

      $current_day = $current_day + 1
    end

    def self.mostly_player_control
      #player_heal = $healing_rate

      # Loop for mostly player control

      # More powerful than full player control, but less efficient maintanence tasks.

      conditions = {
        "Epee"  => "Ishi",
        "Ishi"  => "Bache",
        "Bache" => "Epee",
      }

      bezerker_chance = ["autonomy", "autonomy", "autonomy", "bezerker"]

      chance_of_bezerker = bezerker_chance.sample

      if chance_of_bezerker == "autonomy"
        print "Player Choice >> "; @choice = gets.chomp
      else
        puts "Player lost control of the MC..."

        sleep(1.5)

        @choice = File.readlines("lib/data/ai/player_patterns/observed_player_actions.txt").sample.strip.to_s
      end

      @cchoice  = File.readlines("lib/data/ai/enemy_patterns/observed_enemy_actions.txt").sample.strip.to_s

      puts "The enemy chose: #{@cchoice}"

      if    @choice == "Epee"
        open("lib/input/user/user_choice.txt", "w") { |f|
          f.puts "0"
        }

        # Records a history of player actions.
        open("lib/data/user/chosen_action.txt", "a") { |f|
          f.puts "0"
        }

        # Allows enemey to learn about player patterns.
        File.open("lib/data/ai/player_patterns/observed_player_actions.txt", "a") { |f|
          f.puts "Epee"
        }
      elsif @choice == "Ishi"
        open("lib/input/user/user_choice.txt", "w") { |f|
          f.puts "1"
        }

        # Records a history of player actions.
        open("lib/data/user/chosen_action.txt", "a") { |f|
          f.puts "1"
        }

        # Allows enemey to learn about player patterns.
        File.open("lib/data/ai/player_patterns/observed_player_actions.txt", "a") { |f|
          f.puts "Ishi"
        }
      elsif @choice == "Bache"
        open("lib/input/user/user_choice.txt", "w") { |f|
          f.puts "2"
        }

        # Records a history of player actions.
        open("lib/data/user/chosen_action.txt", "a") { |f|
          f.puts "2"
        }

        # Allows enemey to learn about player patterns.
        File.open("lib/data/ai/player_patterns/observed_player_actions.txt", "a") { |f|
          f.puts "Bache"
        }
      elsif @choice == "Sleep"
        open("lib/input/user/user_choice.txt", "w") { |f|
          f.puts "2"
        }

        # Records a history of player actions. This one defaults to bache even though its a distinct action.
        open("lib/data/user/chosen_action.txt", "a") { |f|
          f.puts "2"
        }

        # Allows enemey to learn about player patterns.
        File.open("lib/data/ai/player_patterns/observed_player_actions.txt", "a") { |f|
          f.puts "Bache"
        }
      end

      puts " "
      sleep(1.5)

      # Experiment with using an enemy that learns from player's decisions.'
      #ai_decision

      if conditions[@choice] == @cchoice
        puts "You were struck by the enemy!"

        $player_struck = $player_struck + 1

        # The amount of damage player gets is based on the enemies attack power.
        #$player_hp = $player_hp - $enemy_atk
        enemy_damage_rate
      elsif @cchoice == @choice
        puts "You reach a stalemate."

        $stalemates = $stalemates + 1
      elsif conditions[@cchoice] == @choice
        puts "You struck the enemy!"

        $enemy_struck = $enemy_struck + 1

        # The amount of damage enemy recieves is based on the player's attack power.
        #$enemy_hp = $enemy_hp - $player_atk
        player_damage_rate
      elsif @choice == "Sleep"
        puts "\e[38;2;187;127;118mYou've opted to stay at an inn...'\e[0m"

        sleep(1.5)

        stay_at_inn
      else
        puts "\e[38;2;187;127;118m#{@choice} is not a valid option\e[0m"
      end

      observe_enemy
      observe_player

      sleep(1.5)

      $current_day = $current_day + 1
    end

    ### This section flips between automatic player and player autonomy.
    def self.mostly_automated_player
      #player_heal = $healing_rate

      # Loop for mostly automated player.

      # The most powerful attacks for player character, but least efficient maintance tasks.

      conditions = {
        "Epee"  => "Ishi",
        "Ishi"  => "Bache",
        "Bache" => "Epee",
      }

      bezerker_chance = ["autonomy", "bezerker", "bezerker", "bezerker"]

      chance_of_bezerker = bezerker_chance.sample

      if chance_of_bezerker == "autonomy"
        print "Player Choice >> "; @choice = gets.chomp
      else
        puts "Player lost control of the MC..."

        sleep(1.5)

        @choice = File.readlines("lib/data/ai/player_patterns/observed_player_actions.txt").sample.strip.to_s
      end

      @cchoice  = File.readlines("lib/data/ai/enemy_patterns/observed_enemy_actions.txt").sample.strip.to_s

      puts "The enemy chose: #{@cchoice}"

      if    @choice == "Epee"
        open("lib/input/user/user_choice.txt", "w") { |f|
          f.puts "0"
        }

        # Records a history of player actions.
        open("lib/data/user/chosen_action.txt", "a") { |f|
          f.puts "0"
        }

        # Allows enemey to learn about player patterns.
        File.open("lib/data/ai/player_patterns/observed_player_actions.txt", "a") { |f|
          f.puts "Epee"
        }
      elsif @choice == "Ishi"
        open("lib/input/user/user_choice.txt", "w") { |f|
          f.puts "1"
        }

        # Records a history of player actions.
        open("lib/data/user/chosen_action.txt", "a") { |f|
          f.puts "1"
        }

        # Allows enemey to learn about player patterns.
        File.open("lib/data/ai/player_patterns/observed_player_actions.txt", "a") { |f|
          f.puts "Ishi"
        }
      elsif @choice == "Bache"
        open("lib/input/user/user_choice.txt", "w") { |f|
          f.puts "2"
        }

        # Records a history of player actions.
        open("lib/data/user/chosen_action.txt", "a") { |f|
          f.puts "2"
        }

        # Allows enemey to learn about player patterns.
        File.open("lib/data/ai/player_patterns/observed_player_actions.txt", "a") { |f|
          f.puts "Bache"
        }
      elsif @choice == "Sleep"
        open("lib/input/user/user_choice.txt", "w") { |f|
          f.puts "2"
        }

        # Records a history of player actions. This one defaults to bache even though its a distinct action.
        open("lib/data/user/chosen_action.txt", "a") { |f|
          f.puts "2"
        }

        # Allows enemey to learn about player patterns.
        File.open("lib/data/ai/player_patterns/observed_player_actions.txt", "a") { |f|
          f.puts "Bache"
        }
      end

      puts " "
      sleep(1.5)

      # Experiment with using an enemy that learns from player's decisions.'
      #ai_decision

      if conditions[@choice] == @cchoice
        puts "You were struck by the enemy!"

        $player_struck = $player_struck + 1

        # The amount of damage player gets is based on the enemies attack power.
        #$player_hp = $player_hp - $enemy_atk
        enemy_damage_rate
      elsif @cchoice == @choice
        puts "You reach a stalemate."

        $stalemates = $stalemates + 1
      elsif conditions[@cchoice] == @choice
        puts "You struck the enemy!"

        $enemy_struck = $enemy_struck + 1

        # The amount of damage enemy recieves is based on the player's attack power.
        #$enemy_hp = $enemy_hp - $player_atk
        player_damage_rate
      elsif @choice == "Sleep"
        puts "\e[38;2;187;127;118mYou've opted to stay at an inn...'\e[0m"

        sleep(1.5)

        stay_at_inn
      else
        puts "\e[38;2;187;127;118m#{@choice} is not a valid option\e[0m"
      end

      observe_enemy
      observe_player

      sleep(1.5)

      $current_day = $current_day + 1
    end

    def self.fully_automated_player
      # Loop for fully automated player characters.

      # Your attacks are more powerful, but you're not as efficient at maintanence.

      guess_player_movement
      guess_enemy_movement

      conditions = {
        "Epee"  => "Ishi",
        "Ishi"  => "Bache",
        "Bache" => "Epee",
      }

      bezerker_chance = ["bezerker", "bezerker", "bezerker", "bezerker"]

      chance_of_bezerker = bezerker_chance.sample

      if chance_of_bazerker == "autonomy"
        print "Player Choice >> "; @choice = gets.chomp
      else
        puts "Player lost control of the MC..."

        sleep(1.5)

        @choice = File.readlines("lib/data/ai/player_patterns/observed_player_actions.txt").sample.strip.to_s
      end

      @cchoice  = File.readlines("lib/data/ai/enemy_patterns/observed_enemy_actions.txt").sample.strip.to_s

      puts "The enemy chose: #{@choice}"

      if    @choice == "Epee"
        open("lib/input/user/user_choice.txt", "w") { |f|
          f.puts "0"
        }

        # Records a history of player actions.
        open("lib/data/user/chosen_action.txt", "a") { |f|
          f.puts "0"
        }
      elsif @choice == "Ishi"
        open("lib/input/user/user_choice.txt", "w") { |f|
          f.puts "1"
        }

        # Records a history of player actions.
        open("lib/data/user/chosen_action.txt", "a") { |f|
          f.puts "1"
        }
      elsif @choice == "Bache"
        open("lib/input/user/user_choice.txt", "w") { |f|
          f.puts "2"
        }

        # Records a history of player actions.
        open("lib/data/user/chosen_action.txt", "a") { |f|
          f.puts "2"
        }
      elsif @choice == "Sleep"
        open("lib/input/user/user_choice.txt", "w") { |f|
          f.puts "2"
        }

        # Records a history of player actions. This one defaults to bache even though its a distinct action.
        open("lib/data/user/chosen_action.txt", "a") { |f|
          f.puts "2"
        }
      end

      puts " "
      sleep(1.5)

      # Experiment with using an enemy that learns from player's decisions.'
      #ai_decision

      if conditions[@choice] == @cchoice
        puts "You were struck by the enemy!"

        $player_struck = $player_struck + 1

        # The amount of damage player gets is based on the enemies attack power.
        #$player_hp = $player_hp - $enemy_atk
        enemy_damage_rate
      elsif @cchoice == @choice
        puts "You reach a stalemate."

        $stalemates = $stalemates + 1
      elsif conditions[@cchoice] == @choice
        puts "You struck the enemy!"

        $enemy_struck = $enemy_struck + 1

        # The amount of damage enemy recieves is based on the player's attack power.
        #$enemy_hp = $enemy_hp - $player_atk
        player_damage_rate
      elsif @choice == "Sleep"
        puts "\e[38;2;187;127;118mYou've opted to stay at an inn...'\e[0m"

        sleep(1.5)

        stay_at_inn
      else
        puts "\e[38;2;187;127;118m#{@choice} is not a valid option\e[0m"
      end

      #$current_day = $current_day + 1

      sleep(1.5)

      $current_day = $current_day + 1
    end
  end
end
