require_relative "Bequest/BequestLineage.rb"
require_relative "Bequest/BequestGribatomaton.rb"

def player_battle
  Bequest::Player.parser
end

def pet_mechanics
  BequestGribatomaton::EvolutionarySymbolic.guess_next_enemy
end

pre_battle = [
  [["battle", "battle"], ["battle", "pet"]],
  [["pet",    "battle"], ["pet",    "pet"]],
]

row_options = [0, 1]
col_options = [0, 1]
arr_options = [0, 1]

cur_row = row_options.sample
cur_col = col_options.sample
cur_arr = arr_options.sample

current_roll = pre_battle[cur_row][cur_col][cur_arr]

if    current_roll == "battle"; player_battle
elsif current_roll ==    "pet"; pet_mechanics
else
  player_battle
end
