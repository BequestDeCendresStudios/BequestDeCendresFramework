require_relative "Experimental/StealthGauntlet.rb"

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
