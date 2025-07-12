module StealthGribatomaton
  class EvolutionarySymbolic
    def upgrade_one;   StealthGribatomaton::Upgrades.level_one_spider; end
    def upgrade_two;   StealthGribatomaton::Upgrades.level_two_spider; end
    def upgrade_tre; StealthGribatomaton::Upgrades.level_three_spider; end
    def upgrade_fro;  StealthGribatomaton::Upgrades.level_four_spider; end
    def upgrade_fiv;  StealthGribatomaton::Upgrades.level_five_spider; end
    def upgrade_six;   StealthGribatomaton::Upgrades.level_six_spider; end
    def upgrade_sev; StealthGribatomaton::Upgrades.level_seven_spider; end

    def enemy_spotted;                 StealthGribatomaton::Behaviours.enemy_spotted; end
    def spider_pig_behaviours;            StealthGribatomaton::Behaviours.behaviours; end
    def spider_pig_noises;                StealthGribatomaton::Behaviours.pet_noises; end

    def self.learn_possible_enemies
      possible_enemies = File.readlines("lib/monsters/possible_enemies.txt")

      size_limit = possible_enemies.size.to_i
      index      = 0

      known_predators = File.read("lib/enemies/known_predators.txt")

      size_limit.times do
        shuffled_enemies = possible_enemies.shuffle
        current_enemy    = shuffled_enemies[index]

        if not current_enemy == known_predators
          puts "Mr. Chirbu has learned about the enemy #{current_enemy}..."

          File.open("lib/gribatomaton/known_predators.txt", "a") { |f|
            f.puts current_enemy
          }
        else
          puts "Mr. Churbu has not encountered any new enemies."
        end

        index = index + 1
      end
    end

    def self.guess_next_enemy
      known_predators = File.readlines("lib/gribatomaton/known_predators.txt")

      size_limit = known_predators.size.to_i
      index      = 0

      size_limit.times do
        shuffled_predators = known_predators.shuffle
        current_predator   = shuffled_predators[index]

        if not current_prediator == known_predators
          puts "Mr. Chirbu recognizes #{current_enemy}..."

          @current_predator = current_predator

          StealthGribatomaton::EvolutionarySymbolic.check_enemy_validity
        else
          puts "Mr. Churbu has not encountered any enemies it recognizes."

          StealthGribatomaton::EvolutionarySymbolic.learn_possible_enemies
        end

        index = index + 1
      end
    end

    def self.check_enemy_validity
      # wolf frogs
      # lobster pigs

      possible_predators = ["wolf frogs", "lobster pigs"]

      game_choice = possible_predators.sample

      if game_choice == @current_predator
      else
        upgrades = [
          [["0", "0"], ["0", "1"], ["0", "2"], ["0", "3"], ["0", "4"], ["0", "5"], ["0", "6"]],
          [["1", "0"], ["1", "1"], ["1", "2"], ["1", "3"], ["1", "4"], ["1", "5"], ["1", "6"]],
          [["2", "0"], ["2", "1"], ["2", "2"], ["2", "3"], ["2", "4"], ["2", "5"], ["2", "6"]],
          [["3", "3"], ["3", "1"], ["3", "2"], ["3", "3"], ["3", "4"], ["3", "5"], ["3", "6"]],
          [["4", "0"], ["4", "1"], ["4", "2"], ["4", "3"], ["4", "4"], ["4", "5"], ["4", "6"]],
          [["5", "0"], ["5", "1"], ["5", "2"], ["5", "3"], ["5", "4"], ["5", "5"], ["5", "6"]],
          [["6", "0"], ["6", "1"], ["6", "2"], ["6", "3"], ["6", "4"], ["6", "5"], ["6", "6"]],
        ]

        u_row_options = [0, 1, 2, 3, 4, 5, 6]
        u_col_options = [0, 1, 2, 3, 4, 5, 6]
        u_arr_options = [0, 1]

        current_upgrade = upgrades[u_row_options][u_col_options][u_arr_options]

        if    current_upgrade == "0"; upgrade_1; enemy_spotted
        elsif current_upgrade == "1"; upgrade_2; enemy_spotted
        elsif current_upgrade == "2"; upgrade_3; enemy_spotted
        elsif current_upgrade == "3"; upgrade_4; enemy_spotted
        elsif current_upgrade == "4"; upgrade_5; enemy_spotted
        elsif current_upgrade == "5"; upgrade_6; enemy_spotted
        elsif current_upgrade == "6"; upgrade_7; enemy_spotted
        else
          puts "Resetting evolutionary path..."

          upgrade_1
        end
      end
    end

    def self.behaviours
      spider_pig_behaviours
      spider_pig_noises
    end
  end
end
