#require_relative "Stealth/StealthLineage.rb"
require_relative "Experimental/StealthCalender.rb"
require_relative "Experimental/StealthAhuzacos.rb"
require_relative "StealthGame.rb"

def standard_quip
  StealthAhuzacos::Language.standard
end

def contrastive_quip
  StealthAhuzacos::Language.contrastive
end

def global_stats
  StealthCalender::LunarSeason.global_stats
end

def set_enemy_name
  StealthCalender::LunarSeason.enemy_name
end

def lunar_cycle
  StealthCalender::LunarSeason.enemy_name
end

def player_gui
  StealthCalender::LunarSeason.player_gui
end

def new_player
  StealthGame::Player.initialize
end

def player_parser
  player_gui

  StealthGame::Player.parser
end

global_stats
set_enemy_name
new_player

#$lures = 0 # How many times you've lured a monster.
#$stuns = 0 # How many times you've stunned a monster.
#$traps = 0 # How many times a monster was lured into a trap.

player_parser
