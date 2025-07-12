## Rules for specific Action intranstive machines.
require_relative "Bequest/BequestActionRules.rb"

############################################################################################
#                             Bequest Actions Rules Rewrite                                #
############################################################################################
# This completely overhauls the old battle mechanics and GUI by having each action handled #
# by their own intransitive state machine that chooses between success, sketchy, and       #
# failure based on choosing a random row, col, and action in a graph that determines       #
# whether a player's action succeeds.                                                      #
############################################################################################
def worship_dieity;     BequestAction::ActionRules.diety; end
def physical_action; BequestAction::ActionRules.physical; end
def magical_puzzle;   BequestAction::ActionRules.magical; end
def move_location;   BequestAction::ActionRules.location; end
def player_parser;          BequestAction::Player.parser; end

############################################################################################
#                                     Coming Soon                                          #
############################################################################################
#def npc_dialogue
#end

#def enemy_battle_mechanics
#end
