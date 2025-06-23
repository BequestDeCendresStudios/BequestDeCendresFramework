module BequestAction
  class ActionRules
    def self.diety
      conditions = [
        "success" => "sketchy",
        "sketchy" => "failure",
        "failure" => "sketchy",
      ]

      success_rate = [
        [["success", "success"], ["success", "sketchy"], ["success", "failure"]],
        [["sketchy", "success"], ["sketchy", "sketchy"], ["sketchy", "failure"]],
        [["failure", "success"], ["failure", "sketchy"], ["failure", "failure"]],
      ]

      row_options = [0, 1, 2]
      col_options = [0, 1, 2]
      arr_options = [0, 1]

      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      player_success = success_rate[cur_row][cur_col][cur_arr]
      enemy_success  = success_rate[cur_row][cur_col][cur_arr]

      if conditios[player_sucess]     ==  enemy_success # Enemies success rate takes precedence.
        # Initialize battle mechanics

      elsif conditions[enemy_success] == player_success # Players success rate takes precedence.
        # Diety rules

      elsif enemy_success             == player_success
        puts "> Enemy and player reached a stalemate."
      end

      sleep(1)
    end

    def self.physical
      conditions = [
        "success" => "sketchy",
        "sketchy" => "failure",
        "failure" => "sketchy",
      ]

      success_rate = [
        [["success", "success"], ["success", "sketchy"], ["success", "failure"]],
        [["sketchy", "success"], ["sketchy", "sketchy"], ["sketchy", "failure"]],
        [["failure", "success"], ["failure", "sketchy"], ["failure", "failure"]],
      ]

      row_options = [0, 1, 2]
      col_options = [0, 1, 2]
      arr_options = [0, 1]

      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      player_success = success_rate[cur_row][cur_col][cur_arr]
      enemy_success  = success_rate[cur_row][cur_col][cur_arr]

      if conditios[player_sucess]     ==  enemy_success # Enemies success rate takes precedence.
        # Initialize battle mechanics

      elsif conditions[enemy_success] == player_success # Players success rate takes precedence.
        # physical rules

      elsif enemy_success             == player_success
        puts "> Enemy and player reached a stalemate."
      end

      sleep(1)
    end

    def self.magical
      conditions = [
        "success" => "sketchy",
        "sketchy" => "failure",
        "failure" => "sketchy",
      ]

      success_rate = [
        [["success", "success"], ["success", "sketchy"], ["success", "failure"]],
        [["sketchy", "success"], ["sketchy", "sketchy"], ["sketchy", "failure"]],
        [["failure", "success"], ["failure", "sketchy"], ["failure", "failure"]],
      ]

      row_options = [0, 1, 2]
      col_options = [0, 1, 2]
      arr_options = [0, 1]

      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      player_success = success_rate[cur_row][cur_col][cur_arr]
      enemy_success  = success_rate[cur_row][cur_col][cur_arr]

      if conditios[player_sucess]     ==  enemy_success # Enemies success rate takes precedence.
        # Initialize battle mechanics

      elsif conditions[enemy_success] == player_success # Players success rate takes precedence.
        # magical puzzle rules

      elsif enemy_success             == player_success
        puts "> Enemy and player reached a stalemate."
      end

      sleep(1)
    end

    def self.location
      conditions = [
        "success" => "sketchy",
        "sketchy" => "failure",
        "failure" => "sketchy",
      ]

      success_rate = [
        [["success", "success"], ["success", "sketchy"], ["success", "failure"]],
        [["sketchy", "success"], ["sketchy", "sketchy"], ["sketchy", "failure"]],
        [["failure", "success"], ["failure", "sketchy"], ["failure", "failure"]],
      ]

      row_options = [0, 1, 2]
      col_options = [0, 1, 2]
      arr_options = [0, 1]

      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      player_success = success_rate[cur_row][cur_col][cur_arr]
      enemy_success  = success_rate[cur_row][cur_col][cur_arr]

      if conditios[player_sucess]     ==  enemy_success # Enemies success rate takes precedence.
        # Initialize battle mechanics

      elsif conditions[enemy_success] == player_success # Players success rate takes precedence.
        # location mechanics

      elsif enemy_success             == player_success
        puts "> Enemy and player reached a stalemate."
      end

      sleep(1)
    end
  end

  class Gui
  end

  class Player
    def self.parser
      print "> "; action = gets.chomp

      if    action ==   "1"; Game::ActionRules.diety
      elsif action ==   "2"; Game::ActionRules.physical
      elsif action ==   "3"; Game::ActionRules.magical
      elsif action ==   "4"; Game::ActionRules.location

      # These allow you to chain actions together.
      elsif action == "1-2"; Game::ActionRules.diety;      Game::ActionRules.physical
      elsif action == "1-3"; Game::ActionRules.diety;      Game::ActionRules.magical
      elsif action == "1-4"; Game::ActionRules.diety;      Game::ActionRules.location
      elsif action == "2-1"; Game::ActionRules.physical;   Game::ActionRules.diety
      elsif action == "2-3"; Game::ActionRules.physical;   Game::ActionRules.magical
      elsif action == "2-4"; Game::ActionRules.physical;   Game::ActionRules.location
      elsif action == "3-1"; Game::ActionRules.magical;    Game::ActionRules.diety
      elsif action == "3-2"; Game::ActionRules.magical;    Game::ActionRules.physical
      elsif action == "3-4"; Game::ActionRules.magical;    Game::ActionRules.location
      elsif action == "4-1"; Game::ActionRules.location;   Game::ActionRules.diety
      elsif action == "4-2"; Game::ActionRules.location;   Game::ActionRules.physical
      elsif action == "4-3"; Game::ActionRules.location;   Game::ActionRules.magical
      else
        puts "Unrecgonized action..."
      end
    end
  end

  #class NPC
    #def self.bequest_c_process
      #BequestDialogueTree::Agents.word_class
      #BequestDialogueTree::Agents.noun
      #BequestDialogueTree::Agents.adjective
      #BequestDialogueTree::Agents.subject
      #BequestDialogueTree::Agents.verb
      #BequestDialogueTree::Agents.adverb
    #end

    #def self.bequest_a_process
      #print "#{npc_name}: "
  
      #BequestDialogueTree::Agents.child_process
      #BequestDialogueTree::Agents.adult_process
    #end
  #end

  class Enemy
    require ""
  end
end
