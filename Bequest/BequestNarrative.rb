module Bequest
  class Narrative
    def self.panel
      known_panels = File.readlines("lib/narrative/panels.txt")     # In a gosu context, this chooses a hand drawn caption like in a graphic novel.
      index        = File.read("lib/narrative/index.txt")

      puts known_panels[index]
    end

    def self.caption
      known_captions = File.readlines("lib/narrative/captions.txt") # In a gosu context, this chooses a hand lettered panel from a list.
      index          = File.read("lib/narrative/index.txt")

      puts known_captions[index]
    end

    def self.player_choice
      known_prompts  = File.readlines("lib/narrative/prompts.txt") # In a gosu context, this chooses a hand lettered panel from a list.
      index          = File.read("lib/narrative/index.txt")

      puts known_captions[index]
    end
  end
end


def comic_layout
  Bequest::Narrative.panel
  Bequest::Narrative.caption
  Bequest::Narrative.player_choice
end
