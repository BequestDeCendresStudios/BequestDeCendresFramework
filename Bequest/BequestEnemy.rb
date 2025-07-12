require_relative "BequestBattleAISystems.rb"

module BequestEnemy
  class EnemyObserve
    def self.node_1
      BequestBattleAISystens::Enemy.observe_player_locations
      BequestBattleAISystens::Enemy.observe_player
    end

    def self.node_2
      BequestBattleAISystens::Enemy.observe_player_locations
      BequestBattleAISystens::Enemy.observe_player
    end

    def self.node_4
      BequestBattleAISystens::Enemy.observe_player_locations
      BequestBattleAISystens::Enemy.observe_player
    end

    def self.node_8
      BequestBattleAISystens::Enemy.observe_player_locations
      BequestBattleAISystens::Enemy.observe_player
    end

    def self.node_7
      BequestBattleAISystens::Enemy.observe_player_locations
      BequestBattleAISystens::Enemy.observe_player
    end

    def self.node_5
      BequestBattleAISystens::Enemy.observe_player_locations
      BequestBattleAISystens::Enemy.observe_player
    end

    def self.choose_node
      node_options = [
        [["node 1", "node 1"], ["node 1", "node 2"], ["node 1", "node 4"], ["node 1", "node 8"], ["node 1", "node 7"], ["node 1", "node 5"]],
        [["node 2", "node 1"], ["node 2", "node 2"], ["node 2", "node 4"], ["node 2", "node 8"], ["node 2", "node 7"], ["node 2", "node 5"]],
        [["node 4", "node 1"], ["node 4", "node 2"], ["node 4", "node 4"], ["node 4", "node 8"], ["node 4", "node 7"], ["node 4", "node 5"]],
        [["node 8", "node 1"], ["node 8", "node 2"], ["node 8", "node 4"], ["node 8", "node 8"], ["node 8", "node 7"], ["node 8", "node 5"]],
        [["node 7", "node 1"], ["node 7", "node 2"], ["node 7", "node 4"], ["node 7", "node 8"], ["node 7", "node 7"], ["node 7", "node 5"]],
        [["node 5", "node 1"], ["node 5", "node 2"], ["node 5", "node 4"], ["node 5", "node 8"], ["node 5", "node 7"], ["node 5", "node 5"]],
      ]

      row_options = [0, 1, 2, 3, 4, 5]
      col_options = [0, 1, 2, 3, 4, 5]
      arr_options = [0, 1]

      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      current_node = node_options[cur_row][cur_col][cur_arr]

      if    current_node == "node 1"; BequestEnemy::EnemyObserve.node_1
      elsif current_node == "node 2"; BequestEnemy::EnemyObserve.node_2
      elsif current_node == "node 4"; BequestEnemy::EnemyObserve.node_4
      elsif current_node == "node 8"; BequestEnemy::EnemyObserve.node_8
      elsif current_node == "node 7"; BequestEnemy::EnemyObserve.node_7
      elsif current_node == "node 5"; BequestEnemy::EnemyObserve.node_5
      end
    end
  end

  class EnemyGuess
    def self.node_1
      BequestBattleAISystens::Enemy.guess_player_locations
      BequestBattleAISystens::Enemy.guess_player
    end

    def self.node_2
      BequestBattleAISystens::Enemy.guess_player_locations
      BequestBattleAISystens::Enemy.guess_player
    end

    def self.node_4
      BequestBattleAISystens::Enemy.guess_player_locations
      BequestBattleAISystens::Enemy.guess_player
    end

    def self.node_8
      BequestBattleAISystens::Enemy.guess_player_locations
      BequestBattleAISystens::Enemy.guess_player
    end

    def self.node_7
      BequestBattleAISystens::Enemy.guess_player_locations
      BequestBattleAISystens::Enemy.guess_player
    end

    def self.node_5
      BequestBattleAISystens::Enemy.guess_player_locations
      BequestBattleAISystens::Enemy.guess_player
    end

    def self.choose_node
      node_options = [
        [["node 1", "node 1"], ["node 1", "node 2"], ["node 1", "node 4"], ["node 1", "node 8"], ["node 1", "node 7"], ["node 1", "node 5"]],
        [["node 2", "node 1"], ["node 2", "node 2"], ["node 2", "node 4"], ["node 2", "node 8"], ["node 2", "node 7"], ["node 2", "node 5"]],
        [["node 4", "node 1"], ["node 4", "node 2"], ["node 4", "node 4"], ["node 4", "node 8"], ["node 4", "node 7"], ["node 4", "node 5"]],
        [["node 8", "node 1"], ["node 8", "node 2"], ["node 8", "node 4"], ["node 8", "node 8"], ["node 8", "node 7"], ["node 8", "node 5"]],
        [["node 7", "node 1"], ["node 7", "node 2"], ["node 7", "node 4"], ["node 7", "node 8"], ["node 7", "node 7"], ["node 7", "node 5"]],
        [["node 5", "node 1"], ["node 5", "node 2"], ["node 5", "node 4"], ["node 5", "node 8"], ["node 5", "node 7"], ["node 5", "node 5"]],
      ]

      row_options = [0, 1, 2, 3, 4, 5]
      col_options = [0, 1, 2, 3, 4, 5]
      arr_options = [0, 1]

      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      current_node = node_options[cur_row][cur_col][cur_arr]

      if    current_node == "node 1"; BequestEnemy::EnemyGuess.node_1
      elsif current_node == "node 2"; BequestEnemy::EnemyGuess.node_2
      elsif current_node == "node 4"; BequestEnemy::EnemyGuess.node_4
      elsif current_node == "node 8"; BequestEnemy::EnemyGuess.node_8
      elsif current_node == "node 7"; BequestEnemy::EnemyGuess.node_7
      elsif current_node == "node 5"; BequestEnemy::EnemyGuess.node_5
      end
    end
  end
end
