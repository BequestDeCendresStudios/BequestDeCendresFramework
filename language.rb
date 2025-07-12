#require_relative "Stealth/StealthLineage.rb"
require_relative "Experimental/StealthCalender.rb"
require_relative "Experimental/StealthAhuzacos.rb"
require_relative "StealthGame.rb"

#################################################################################
#                                Player Quips                                   #
#################################################################################
# This dialogue here serves a different purpose than NPC dialogue, and is       #
# closer to quips characters make when they travel, with the distinction being  #
# that these are procedurally generated rather than pre-scripted, so you can    #
# never be quite sure what your character will say next.                        #
#################################################################################
def standard_quip;       StealthAhuzacos::Language.standard; end
def contrastive_quip; StealthAhuzacos::Language.contrastive; end

#################################################################################
#              Global Stats, Enemy Name, Lunar Cycle, New Player                #
#################################################################################
# These mechanics determine what your global stats will be, sets the current    #
# enemy name, then calls the lunar cycle function, and displays the MC gui.     #
# This may eventually be merged with battle mechanics.                          #
#################################################################################
def global_stats; StealthCalender::LunarSeason.global_stats; end
def set_enemy_name; StealthCalender::LunarSeason.enemy_name; end
def lunar_cycle;    StealthCalender::LunarSeason.enemy_name; end
def player_gui;     StealthCalender::LunarSeason.player_gui; end
def new_player;              StealthGame::Player.initialize; end

def player_parser
  player_gui

  StealthGame::Player.parser
end

#global_stats
#set_enemy_name
#new_player
#player_parser
