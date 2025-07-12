require_relative "Bequest/BequestLineage.rb"
require_relative "Bequest/BequestGribatomaton.rb"

#######################################################################################
#                                  Player Parser                                      #
#######################################################################################
# This shows the current lunar phase, and how many days till the next lunar phase     #
# shift. It then procedurally generated a random beast / monster name in the fantasy  #
# language I have designed, its sanity level, hp count, healing rate.                 #
#                                                                                     #
# It then shows you the players states: sanity, hp, and healing rate. And also what   #
# the current enemies elemental weakness is without a certain probability of their    #
# immunity degree.                                                                    #
#                                                                                     #
# Terminology Update                                                                  # 
# [ Ereil  ][ Eblouir  ][ Plege  ] is depricated                                      #
#                                                                                     #
# It then prompts you to watch out for the specific enemy, and prompts a command from #
# bokette.                                                                            #
#######################################################################################
def player_battle
  Bequest::Player.parser
end

#######################################################################################
#                             Gribatomaton Mechanics                                  #
#######################################################################################
# Your pet spider pig scopes out and searches for enemies to attack on your behalf,   #
# while you focus on indirect battle mechanics.                                       #
#                                                                                     #
# Your pet from time to time need to upgrade to keep up with the enemies ability to   #
# learn and evolve your own indirect battle mechanic moves.                           #
#######################################################################################
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
