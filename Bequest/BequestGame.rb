module BequestGame
  class Player
    ######################################################################################
    #                               Changes From Yumemoire                               #
    ######################################################################################
    # This game framework establishes the base player stats, and tracks how many times   #
    # a player has lured, stunned, or trapped a monster whose name is procedurally       #
    # generated from random magical element based on the fantasy language that I am      #
    # developing. In the graphical edition that will be also include the traditional     #
    # color palette that diverges from traditional Japanese colors, with more of a focus #
    # on colors you're likely to encounter on pirate ships.                              #
    #                                                                                    #
    # The elemental weakness chart keeps track of elemental names, the immunity label    #
    # and a ranged probability metric that tracks how immune or susceptible a monster    #
    # is to a specific element. The eventual aims is more nuanced range between immunity #
    # and susceptibility to different magical elements you will run across.              #
    #                                                                                    #
    # This text adventure operates on a text parser based system that splits parser      #
    # functionality into three sections: lure, stun, and trap. Eventually I will also    #
    # include parser mechanics for things like applying first aid.                       #
    ######################################################################################

    def self.initialize
      $lures = 0 # How many times you've lured a monster.
      $stuns = 0 # How many times you've stunned a monster.
      $traps = 0 # How many times a monster was lured into a trap.
    end

    ######################################################################################
    #                                Battle Mechanics#                                   #
    ######################################################################################
    # The game relies on indirect battle mechanics such as luring, trapping, and sending #
    # enemies into a deadly trap, although I may pursue less lethal options at a later   #
    # point, Here I have provided words that will mean Lure, Stun, and Trap through out  #
    # the battle mechanics of the game.                                                  #
    ######################################################################################
    # ruaproie          [ Lure Prey ] - Duapehree [ Dee-Ah Peh-Doh ee-ay ]
    # kantan_ni_eblouir [ Stun ]      - Kantajieboyay [ Kahn-Tahn ni-Boh-yay ]
    # mortorrapu        [ Trap ]      - Motodapu [ Mohtoh Dahpee ]
    
    def self.ruaproie_rules
      require "Bequest/BequestDialogue.rb"

      BequestDialogue::EachWord.standard_francophonic
      BequestDialogue::EachWord.standard_autocorrect

      print ">> Anu Ruaproiu vous sentaku."
    end

    def self.kantan_ni_eblouir_rules
      require "Bequest/BequestDialogue.rb"

      BequestDialogue::EachWord.standard_francophonic
      BequestDialogue::EachWord.standard_autocorrect

      print ">> Anu Kantan Ni Eblouir vous sentaku."
    end

    def self.mortorrapu_rules
      require "Bequest/BequestDialogue.rb"

      BequestDialogue::EachWord.standard_francophonic
      BequestDialogue::EachWord.standard_autocorrect

      print ">> Le mortorapu vous sentaku."
    end

    def self.ruaproie_action
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
        # ruaproie Rules

      elsif enemy_success             == player_success
        puts "> Enemy and player reached a stalemate."
      end

      sleep(1)
    end

    def self.kantan_ni_eblouir_action
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
        # kantan_ni_eblouir rules

      elsif enemy_success             == player_success
        puts "> Enemy and player reached a stalemate."
      end

      sleep(1)
    end

    def self.mortorrapu_action
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
        # mortorrapu rules

      elsif enemy_success             == player_success
        puts "> Enemy and player reached a stalemate."
      end

      sleep(1)
    end
    
    # The main text parser the presents enemy weakness statistics and battle mechanics.
    def self.parser
      ## Element          Immunity  Probability
      elemental_weakness = [
        [ "Ea",           "Immune", 0.330 ],
        [ "Ea",    "Almost Immune", 0.405 ],
        [ "Ea", "Less Susceptible", 0.480 ],
        [ "Ea", "More Susceptible", 0.575 ],
        [ "Ea",             "Weak", 0.670 ],
      ], [
        [ "Denki",           "Immune", 0.330 ],
        [ "Denki",    "Almost Immune", 0.405 ],
        [ "Denki", "Less Susceptible", 0.480 ],
        [ "Denki", "More Susceptible", 0.575 ],
        [ "Denki",             "Weak", 0.670 ],
      ], [
        [ "Kaiyo",           "Immune", 0.330 ],
        [ "Kaiyo",    "Almost Immune", 0.405 ],
        [ "Kaiyo", "Less Susceptible", 0.480 ],
        [ "Kaiyo", "More Susceptible", 0.575 ],
        [ "Kaiyo",             "Weak", 0.670 ],
      ], [
        [ "Tsuchi",           "Immune", 0.330 ],
        [ "Tsuchi",    "Almost Immune", 0.405 ],
        [ "Tsuchi", "Less Susceptible", 0.480 ],
        [ "Tsuchi", "More Susceptible", 0.575 ],
        [ "Tsuchi",             "Weak", 0.670 ],
      ], [
        [ "Tenchi",           "Immune", 0.330 ],
        [ "Tenchi",    "Almost Immune", 0.405 ],
        [ "Tenchi", "Less Susceptible", 0.480 ],
        [ "Tenchi", "More Susceptible", 0.575 ],
        [ "Tenchi",             "Weak", 0.670 ],
      ], [
        [ "Shi",           "Immune", 0.330 ],
        [ "Shi",    "Almost Immune", 0.405 ],
        [ "Shi", "Less Susceptible", 0.480 ],
        [ "Shi", "More Susceptible", 0.575 ],
        [ "Shi",             "Weak", 0.670 ],
      ]

      monster_name_elements = $current_monster_name.split(" ")

      loop do
        #Bequest::LunarCalender.lunar_cycle

        #if $player_hp < 1
          #sleep(1.5)

          #puts "You became to exhausted to continue."
          #abort
        #end

        airborn    = elemental_weakness[0] # Air
        electric   = elemental_weakness[1] # Fire / Electricity
        heavenly   = elemental_weakness[3] # Heaven
        earthen    = elemental_weakness[4] # Earth
        recovery   = elemental_weakness[2] # Recovery
        corruption = elemental_weakness[5] # Corruption

        #Bequest::Enemy.familiarity

        # Get monster element name, immunity factor, immunity probability, and elemental weakness its strength in number.
        if    monster_name_elements[1] ==     "Ea"; puts "\n#{airborn[0][0]}: #{airborn[0][1]} #{airborn[0][2]} #{earthen[0][0]}: #{earthen[4][1]} #{earthen[4][2]}"
        elsif monster_name_elements[1] ==  "Denki"; puts "\n#{electric[0][0]}: #{electric[0][1]} #{electric[0][2]} #{airborn[0][0]}: #{airborn[4][1]} #{airborn[4][2]}"
        elsif monster_name_elements[1] ==  "Kaiyo"; puts "\n#{recovery[0][0]}: #{recovery[0][1]} #{covery[0][2]} #{corruption[0][0]}: #{corruption[4][1]} #{corruption[4][2]}"
        elsif monster_name_elements[1] == "Tsuchi"; puts "\n#{heavenly[0][0]}: #{heavenly[0][1]} #{heavenly[0][2]} #{airborn[0][0]}: #{airborn[4][1]} #{airborn[4][2]}"
        elsif monster_name_elements[1] == "Tenchi"; puts "\n#{earthen[0][0]}: #{earthen[0][1]} #{earthen[0][2]} #{electric[0][0]}: #{electric[4][1]} #{electric[4][2]}"
        elsif monster_name_elements[1] ==    "Shi"; puts "\n#{corruption[0][0]}: #{corruption[0][1]} #{corruption[0][2]} #{heavenly[0][0]}: #{heavenly[4][1]} #{heavenly[4][2]}"
        else
          puts "Unrecognized entity."
        end

        parsers = {
          "Leurre"                   => "#{$current_monster_name}",
          "#{$current_monster_name}" => "es ereil a toi.",
        }, {
          "Otable "                  => "#{$current_monster_name}",
          "#{$current_monster_name}" => "es eblouir par toi.",
        }, {
          "Piege"                    => "#{$current_monster_name}",
          "#{$current_monster_name}" => "es plege par toi.",
        }

        puts "\n[ Luerre #{$lures} ][ Otable #{$stuns} ][ Piege #{$traps} ]"

        print "Regarder par: #{$current_monster_name}, bokette? << "

        @action       = gets.chomp

        if    @action == "Ereil"
          print parsers[0]["Ereil"]
          print " "
          print parsers[0][$current_monster_name]

          $lures = $lures + 1

          print $current_monster_name
          print " "
          BequestGame::Enemy.lure_enemy
        elsif @action == "Eblouir"
          print parsers[1]["Eblouir"]
          print " "
          print parsers[1][$current_monster_name]

          $stuns = $stuns + 1

          print $current_monster_name
          print " "
          BequestGame::Enemy.stun_enemy
        elsif @action == "Plege"
          print parsers[2]["Plege"]
          print " "
          print parsers[2][$current_monster_name]

          $traps = $traps + 1

          print $current_monster_name
          print " "
          BequestGame::Enemy.trap_enemy
        else
          puts ">> Your action is not recognized."
        end
      end

#      def self.quip_contrastive
#        BequestGame::Language.contrastive
#      end
#
#      def self.quip_standard
#        Bequest::Language.standard
#      end

#      def self.quip
#        #              standard  contrastive
#        # standard     s,s       s,c
#        # contrastive  c,s       c,c
#
#        formats = [
#          [["standard",    "standard"], ["standard",    "contrastive"]],
#          [["contrastive", "standard"], ["contrastive", "contrastive"]],
#        ]
#
#        row_options = [0, 1]
#        col_options = [0, 1]
#        arr_options = [0, 1]
#
#        cur_row = row_options.sample
#        cur_col = col_options.sample
#        cur_arr = arr_options.sample
#
#        current_format = formats[cur_row][cur_col][cur_arr]
#
#        if    current_format ==    "standard"; Bequest::Language.contrastive
#        elsif current_format == "contrastive"; Bequest::Language.standard
#        else
#          Bequest::Language.standard
#        end
#      end
    end
  end

  class Enemy
    def self.monster_name
      #def self.five_elements
        possible_elements = File.readlines("lib/beastiary/monsternames/elements.txt")

        $chosen_element = possible_elements.sample.strip.to_s
      #end

      #def self.adjectives
        possible_adjectives = File.readlines("lib/beastiary/monsternames/gendered_adverb.txt")

        $chosen_adjective = possible_adjectives.sample.strip.to_s 
      #end

      #Bequest::Enemy.monster_name.five_elements
      #Bequest::Enemy.monster_name.adjectives

      $current_monster_name = "#{$chosen_element} #{$chosen_adjective}"

      File.open("lib/previous/enemy.txt", "w") { |f|
        f.puts $current_monster_name
      }
    end

    # If the previous enemy encountered matches one you've dueled before, it quips about not continuing to run into them.
    def self.familiarity
      previous_enemy = File.read("lib/previous/enemy.txt")

      name_list  = File.readlines("lib/rendered/enemies.txt")
      size_limit = name_list.size.to_i
      index      = 0

      size_limit.times do
        current_enemy = name_list[index]

        if current_enemy == previous_enemy
          puts "<< We have to stop running into each other."
        else
          puts "<< I don't believe we've met."
        end

        index = index + 1

        sleep(0.5)
      end
    end

    def self.lure_enemy
      #        true  false
      # true   t,t   t,f
      # false  f,t   f,f

      active_state = [
        [[true,  true], [true,  false]],
        [[false, true], [false, false]],
      ]

      row_options = [0, 1]
      col_options = [0, 1]
      arr_options = [0, 1]

      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      lure_status = active_state[cur_row][cur_col][cur_arr]

      if    false == lure_status
        puts "did not manage to spot you."
      elsif true  == lure_status
        puts "managed to spot you."

        enemy_hit = ["hit", "miss"]

        current_strike = enemy_hit.sample

        if    current_strike == "hit"
          puts ">> You were struck by the aggressor."
          $player_hp = $player_hp - 2
        elsif current_strike == "miss"
          puts ">> You managed to avoid being struck."
        end
      end 
    end

    def self.stun_enemy
      #        true  false
      # true   t,t   t,f
      # false  f,t   f,f

      active_state = [
        [[true,  true], [true,  false]],
        [[false, true], [false, false]],
      ]

      row_options = [0, 1]
      col_options = [0, 1]
      arr_options = [0, 1]

      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      stun_status = active_state[cur_row][cur_col][cur_arr]

      if    false == stun_status
        puts "was not paralyzed by your strike."
      elsif true  == stun_status
        puts "managed to be stunned by your strike."
      end 
    end

    def self.trap_enemy
      #        true  false
      # true   t,t   t,f
      # false  f,t   f,f

      active_state = [
        [[true,  true], [true,  false]],
        [[false, true], [false, false]],
      ]

      row_options = [0, 1]
      col_options = [0, 1]
      arr_options = [0, 1]

      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      trap_status = active_state[cur_row][cur_col][cur_arr]

      if    false == trap_status
        puts "was not tricked into a trap."
      elsif true  == trap_status
        puts "managed to be trapped while you lured it in your direction."

        sleep(1.5)

        puts "YON WIN"

        gets.chomp
        abort
      end 
    end
  end

  class MoveHistory
    # Similar approaches to variable additions.
    # Except instead of move_x or move_y: it adds move x or y history to history of move_x or move_y
    def self.move_left_x
      $x = $x - 1
    end

    def self.move_right_x
      $x = $x + 1
    end

    def self.move_down_y
      $y = $y + 1
    end

    def self.move_up_y
      $y = $y - 1
    end

    # Records and recalls previous moves in x coordinates.
    $previous_x = "You had moved #{$x} in the x coordinate."
    $previous_y = "You had moved #{$y} in the y coordinate."

    def self.move_x_record
      move_x = $previous_x

      File.open("_history/move_x/move_history.txt", "a") { |f|
        f.puts move_x
      }
    end

    def self.move_x_recall
      previous_moves = File.readlines("_history/move_x/move_history.txt")
      search_limit   = previous_move.size.to_i

      index = 0

      search_limit.times do
        puts "PREVIOUS MOVE X"
        puts previous_move[index]

        index = index + 1    
      end
    end

    # Records and recalls previous moves in y coordinates.
    def self.move_y_record
      move_y = $previous_y

      File.open("_history/move_y/move_history.txt", "a") { |f|
        f.puts move_y
      }
    end

    def self.move_y_recall
      previous_moves = File.readlines("_history/move_y/move_history.txt")
      search_limit   = previous_move.size.to_i

      index = 0

      search_limit.times do
        puts "PREVIOUS MOVE Y"
        puts previous_move[index]

        index = index + 1    
      end
    end
  end
end
