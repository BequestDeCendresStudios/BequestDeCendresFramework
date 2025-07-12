require_relative "Experimental/StealthGauntlet.rb"

################################################################################
#                                Sample Game                                   #
################################################################################
# This mostly serves for historical purposes to show the relationship to       #
# Yumemoire and how this grew and evolved out of a Minetest mod.               #
################################################################################
def init_game
  StealthGauntlet::Yumemoire.initialize
end

def puzzle_game
  StealthGauntlet::Yumemoire.initialize
end

def yumemoire_rescue
  StealthGauntlet::Yumemoire.hangman
end

init_game
puzzle_game
