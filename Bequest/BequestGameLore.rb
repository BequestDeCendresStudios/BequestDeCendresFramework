module BequestGameLore
  class Lore
    def self.lore_inputs
      #             0.5       25.0       50.0       75.0       100.0
      #   0.5   0.5,0.5   0.5,25.0   0.5,50.0   0.5,75.0   0.5,100.0
      #  25.0  25.0,0.5  25.0,25.0  25.0,50.0  25.0,75.0  25.0,100.0
      #  50.0  50.5,0.5  50.0,25.0  50.0,50.0  50.0,75.0  50.0,100.0
      #  75.0  75.0,0.5  75.0,25.0  75.0,50.0  75.0,75.0  75.0,100.0
      # 100.0   100,0.5 100.0,25.0 100.0,50.0 100.0,75.0 100.0,100.0

      possible_inputs = [
        [[  0.5, 0.5]. [  0.5, 25.0], [  0.5, 50.0], [  0.5, 75.0], [  0.5, 100.0]],
        [[ 25.0, 0.5]. [ 25.0, 25.0], [ 25.0, 50.0], [ 25.0, 75.0], [ 25.0, 100.0]],
        [[ 50.0, 0.5]. [ 50.0, 25.0], [ 50.0, 50.0], [ 50.0, 75.0], [ 50.0, 100.0]],
        [[ 75.0, 0.5]. [ 75.0, 25.0], [ 75.0, 50.0], [ 75.0, 75.0], [ 75.0, 100.0]],
        [[100.0, 0.5]. [100.0, 25.0], [100.0, 50.0], [100.0, 75.0], [100.0, 100.0]],
      ]

      row_options = [0, 1, 2, 3, 4]
      col_options = [0, 1, 2, 3, 4]
      arr_options = [0, 1]

      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      @lore_input = possible_inputs[cur_row][cur_col][cur_arr]
    end

    def self.action_inputs

      possible_inputs = [
        [[ 0.50, 0.5], [ 0.50, 6.5], [ 0.50, 12.5], [ 0.50, 18.75], [ 0.50, 25.0], [ 0.50, 50.0], [ 0.50, 56.25], [ 0.50, 62.5], [ 0.50, 68.75], [ 0.50, 75.0], [ 0.50, 87.5], [ 0.50, 100.0], [ 0.50, 106.0], [ 0.50, 112.5], [ 0.50, 118.75]],
        [[ 6.50, 0.5], [ 6.50, 6.5], [ 6.50, 12.5], [ 6.50, 18.75], [ 6.50, 25.0], [ 6.50, 50.0], [ 6.50, 56.25], [ 6.50, 62.5], [ 6.50, 68.75], [ 6.50, 75.0], [ 6.50, 87.5], [ 6.50, 100.0], [ 6.50, 106.0], [ 6.50, 112.5], [ 6.50, 118.75]],
        [[18.75, 0.5], [18.75, 6.5], [18.75, 12.5], [18.75, 18.75], [18.75, 25.0], [18.75, 50.0], [18.75, 56.25], [18.75, 62.5], [18.75, 68.75], [18.75, 75.0], [18.75, 87.5], [18.75, 100.0], [18.75, 106.0], [18.75, 112.5], [18.75, 118.75]],
        [[12.50, 0.5], [12.50, 6.5], [12.50, 12.5], [12.50, 18.75], [12.50, 25.0], [12.50, 50.0], [12.50, 56.25], [12.50, 62.5], [12.50, 68.75], [12.50, 75.0], [12.50, 87.5], [12.50, 100.0], [12.50, 106.0], [12.50, 112.5], [12.50, 118.75]],
        [[25.00, 0.5], [25.00, 6.5], [25.00, 12.5], [25.00, 18.75], [25.00, 25.0], [25.00, 50.0], [25.00, 56.25], [25.00, 62.5], [25.00, 68.75], [25.00, 75.0], [25.00, 87.5], [25.00, 100.0], [25.00, 106.0], [25.00, 112.5], [25.00, 118.75]],
        [[50.00, 0.5], [50.00, 6.5], [50.00, 12.5], [50.00, 18.75], [50.00, 25.0], [50.00, 50.0], [50.00, 56.25], [50.00, 62.5], [50.00, 68.75], [50.00, 75.0], [50.00, 87.5], [50.00, 100.0], [50.00, 106.0], [50.00, 112.5], [50.00, 118.75]],
        [[56.50, 0.5], [56.50, 6.5], [56.50, 12.5], [56.50, 18.75], [56.50, 25.0], [56.50, 50.0], [56.50, 56.25], [56.50, 62.5], [56.50, 68.75], [56.50, 75.0], [56.50, 87.5], [56.50, 100.0], [56.50, 106.0], [56.50, 112.5], [56.50, 118.75]],
        [[62.50, 0.5], [62.50, 6.5], [62.50, 12.5], [62.50, 18.75], [62.50, 25.0], [62.50, 50.0], [62.50, 56.25], [62.50, 62.5], [62.50, 68.75], [62.50, 75.0], [62.50, 87.5], [62.50, 100.0], [62.50, 106.0], [62.50, 112.5], [62.50, 118.75]],
        [[68.75, 0.5], [68.75, 6.5], [68.75, 12.5], [68.75, 18.75], [68.75, 25.0], [68.75, 50.0], [68.75, 56.25], [68.75, 62.5], [68.75, 68.75], [68.75, 75.0], [68.75, 87.5], [68.75, 100.0], [68.75, 106.0], [68.75, 112.5], [68.75, 118.75]],
        [[75.00, 0.5], [75.00, 6.5], [75.00, 12.5], [75.00, 18.75], [75.00, 25.0], [75.00, 50.0], [75.00, 56.25], [75.00, 62.5], [75.00, 68.75], [75.00, 75.0], [75.00, 87.5], [75.00, 100.0], [75.00, 106.0], [75.00, 112.5], [75.00, 118.75]],
        [[87.50, 0.5], [87.50, 6.5], [87.50, 12.5], [87.50, 18.75], [87.50, 25.0], [87.50, 50.0], [87.50, 56.25], [87.50, 62.5], [87.50, 68.75], [87.50, 75.0], [87.50, 87.5], [87.50, 100.0], [87.50, 106.0], [87.50, 112.5], [87.50, 118.75]],
        [[100.0, 0.5], [100.0, 6.5], [100.0, 12.5], [100.0, 18.75], [100.0, 25.0], [100.0, 50.0], [100.0, 56.25], [100.0, 62.5], [100.0, 68.75], [100.0, 75.0], [100.0, 87.5], [100.0, 100.0], [100.0, 106.0], [100.0, 112.5], [100.0, 118.75]],
        [[106.5, 0.5], [106.5, 6.5], [106.5, 12.5], [106.5, 18.75], [106.5, 25.0], [106.5, 50.0], [106.5, 56.25], [106.5, 62.5], [106.5, 68.75], [106.5, 75.0], [106.5, 87.5], [106.5, 100.0], [106.5, 106.0], [106.5, 112.5], [106.5, 118.75]],
        [[112.5, 0.5], [112.5, 6.5], [112.5, 12.5], [112.5, 18.75], [112.5, 25.0], [112.5, 50.0], [112.5, 56.25], [112.5, 62.5], [112.5, 68.75], [112.5, 75.0], [112.5, 87.5], [112.5, 100.0], [112.5, 106.0], [112.5, 112.5], [112.5, 118.75]],
        [[118.8, 0.5], [118.8, 6.5], [118.8, 12.5], [118.8, 18.75], [118.8, 25.0], [118.8, 50.0], [118.8, 56.25], [118.8, 62.5], [118.8, 68.75], [118.8, 75.0], [118.8, 87.5], [118.8, 100.0], [118.8, 106.0], [118.8, 112.5], [118.8, 118.75]],
      ]

      row_options = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]
      col_options = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]
      arr_options = [0, 1]

      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      @action_input = possible_inputs[cur_row][cur_col][cur_arr]
    end

    def self.magic_inputs
      #             0.5      12.5      25.0      37.5      50.0      75.0      87.5  100.0
      #    0.5  0.5,0.5  0.5,12.5  0.5,25.0  0.5,37.5  0.5,50.0  0.5,75.0  0.5,87.5  0.5,100.0
      #   12.5 12.5,0.5 12.5,12.5 12.5,25.0 12.5,37.5 12.5,50.0 12.5,75.0 12.5,87.5 12.5,100.0
      #   25.0  
      #   37.5  
      #   50.0  
      #   75.0  
      #   87.5  
      #  100.0  

      possible_inputs = [
        [[  0.5, 0.5], [  0.5, 12.5], [  0.5, 25.0], [  0.5, 37.5], [  0.5, 50.0], [  0.5, 75.0], [  0.5, 75.0], [  0.5, 100.0]],
        [[ 12.5, 0.5], [ 12.5, 12.5], [ 12.5, 25.0], [ 12.5, 37.5], [ 12.5, 50.0], [ 12.5, 75.0], [ 12.5, 75.0], [ 12.5, 100.0]],
        [[ 25.0, 0.5], [ 25.0, 12.5], [ 25.0, 25.0], [ 25.0, 37.5], [ 25.0, 50.0], [ 25.0, 75.0], [ 25.0, 75.0], [ 25.0, 100.0]],
        [[ 50.0, 0.5], [ 50.0, 12.5], [ 50.0, 25.0], [ 50.0, 37.5], [ 50.0, 50.0], [ 50.0, 75.0], [ 50.0, 75.0], [ 50.0, 100.0]],
        [[ 75.0, 0.5], [ 75.0, 12.5], [ 75.0, 25.0], [ 75.0, 37.5], [ 75.0, 50.0], [ 75.0, 75.0], [ 75.0, 75.0], [ 75.0, 100.0]],
        [[ 87.5, 0.5], [ 87.5, 12.5], [ 87.5, 25.0], [ 87.5, 37.5], [ 87.5, 50.0], [ 87.5, 75.0], [ 87.5, 75.0], [ 87.5, 100.0]],
        [[100.0, 0.5], [100.0, 12.5], [100.0, 25.0], [100.0, 37.5], [100.0, 50.0], [100.0, 75.0], [100.0, 75.0], [100.0, 100.0]],
      ]

      row_options = [0, 1, 2, 3, 4, 5, 6]
      col_options = [0, 1, 2, 3, 4, 5, 6]
      arr_options = [0, 1]

      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      @magic_input = possible_inputs[cur_row][cur_col][cur_arr]
    end

    def self.color_inputs
      possible_inputs = [
        [[  0.5, 0.5], [  0.5, 12.5], [  0.5, 25.0], [  0.5, 37.5], [  0.5, 50.0], [  0.5, 75.0], [  0.5, 75.0], [  0.5, 100.0]],
        [[ 12.5, 0.5], [ 12.5, 12.5], [ 12.5, 25.0], [ 12.5, 37.5], [ 12.5, 50.0], [ 12.5, 75.0], [ 12.5, 75.0], [ 12.5, 100.0]],
        [[ 25.0, 0.5], [ 25.0, 12.5], [ 25.0, 25.0], [ 25.0, 37.5], [ 25.0, 50.0], [ 25.0, 75.0], [ 25.0, 75.0], [ 25.0, 100.0]],
        [[ 50.0, 0.5], [ 50.0, 12.5], [ 50.0, 25.0], [ 50.0, 37.5], [ 50.0, 50.0], [ 50.0, 75.0], [ 50.0, 75.0], [ 50.0, 100.0]],
        [[ 75.0, 0.5], [ 75.0, 12.5], [ 75.0, 25.0], [ 75.0, 37.5], [ 75.0, 50.0], [ 75.0, 75.0], [ 75.0, 75.0], [ 75.0, 100.0]],
        [[ 87.5, 0.5], [ 87.5, 12.5], [ 87.5, 25.0], [ 87.5, 37.5], [ 87.5, 50.0], [ 87.5, 75.0], [ 87.5, 75.0], [ 87.5, 100.0]],
        [[100.0, 0.5], [100.0, 12.5], [100.0, 25.0], [100.0, 37.5], [100.0, 50.0], [100.0, 75.0], [100.0, 75.0], [100.0, 100.0]],
      ]

      row_options = [0, 1, 2, 3, 4, 5, 6]
      col_options = [0, 1, 2, 3, 4, 5, 6]
      arr_options = [0, 1]

      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      @color_input = possible_inputs[cur_row][cur_col][cur_arr]
    end

    def self.lore_tree
      require "decisiontree"

      attributes = ["Lore"], ["Actions"], ["Magic"], ["Color"]

      training = [
        [   0.5,   "Science mixed with mysticism.." ], # Shinshusci
        [  25.0,             "Institutiona horror." ], # Inhorei
        [  50.0,         "Systematic supernatural." ], # Yokanozen
        [  75.0,             "Clinical corruption." ], # Ceriderinshos
        [ 100.0, "General term for damage control." ], # Seigyo Des Dommmages
      ], [
        [  0.50,                                                                 "To hop from raft to raft." ], #   0.50 Buisaut
        [  6.50,                                                                     "To hold onto a ledge." ], #   6.50 Etreintetana
        [ 12.50,                                                           "To waltz in special made shoes." ], #  12.50 Getawaltz
        [ 18.75,                                                              "To bite the neck of enemies." ], #  18.75 Morsurenekku
        [ 25.00,                                    "Smashing or shoveling enemeies after finding a hammer." ], #  25.00 Matraque
        [ 50.00,                "Scooping up dirt or contamination in haunted areas after finding a shovel." ], #  50.00 Sekupu
        [ 56.25,                                                    "To slow down your walk as if to sneak." ], #  56.25 Flaner
        [ 62.50,                                              "Strangling enemies after off your tee shirt." ], #  62.50 Wurgen
        [ 68.75, "An extra powerful attack that happens when enemy is near death to make sure they're dead." ], #  68.75 Coupe De Grace
        [ 75.00,                                       "Light a room or passage after finding a flashlight." ], #  75.00 Raitosalle
        [ 87.50,                                              "Disarm a trap by sending in a monster decoy." ], #  87.50 Busokaijoplege
        [100.00,                                                    "Find tools scattered around the house." ], # 100.00 Trouvertsuru
        [106.50,                                                                        "Exit the sub-menu." ], # 106.50 Viola
        [112.50,                                             "Play an example video after a wrong decision." ], # 112.50 L Appel Du Vide
        [118.75,                                "Changes the subject mid conversation, similar to skipping." ], # 118.75 Passer Du Coq A L'Ane
      ], [
        [   0.5,   "Floating Magic" ],   #  0.5 #9ADEF4 Air       / Float
        [  12.5,   "Drowning Magic" ],   # 12.5 #397A8E Water     / Drowning
        [  25.0,  "Sandstorm Magic" ],   # 25.0 #A9A85F Sand      / Duststorm
        [  37.5,     "Poison Magic" ],   # 37.5 #56756C Moss      / Poison
        [  50.0, "Corruption Magic" ],   # 50.0 #3C3733 Stone     / Corruption
        [  75.0,      "Death Magic" ],   # 75.0 #1F1F21 Death     / Void
        [  87.5,    "Healing Magic" ],   # 87.5 #FFFFFF Recovery  / Healing
        [ 100.0,      "Union Magic" ],   # 100.0 #2B2A2B Union     / Combining Elements
      ], [
        [   0.5,      "#9ADEF4 Air Blue" ],
        [  12.5,    "#397A8E Water Blue" ],
        [  25.0,    "#A9A85F Sand Brown" ],
        [  37.5,    "#56756C Moss Green" ],
        [  50.0,    "#3C3733 Stone Grey" ],
        [  75.0,   "#1F1F21 Death Black" ],
        [  87.5, "#FFFFFF Healing White" ],
        [ 100.0,   "#2B2A2B Union Black" ],
      ]

      dec_tree_configurations =    DecisionTree::ID3Tree.new(attributes[0], training[0], 1, :continuous),
                                   DecisionTree::ID3Tree.new(attributes[1], training[1], 1, :continuous),
                                   DecisionTree::ID3Tree.new(attributes[2], training[2], 1, :continuous),
                                   DecisionTree::ID3Tree.new(attributes[3], training[3], 1, :continuous)

      current_dectree1 = dec_tree_configurations[0]
      current_dectree1.train

      current_dectree2 = dec_tree_configurations[1]
      current_dectree2.train

      current_dectree3 = dec_tree_configurations[2]
      current_dectree3.train

      current_dectree4 = dec_tree_configurations[3]
      current_dectree4.train

      test1 = [@lore_input,                       "Systematic supernatural."]
      test2 = [@action_input, "Strangling enemies after off your tee shirt."]
      test3 = [@magic_input,                                  "Poison Magic"]
      test4 = [@color_input,                           "#2B2A2B Union Black"]

      @decision1 = current_dectree1.predict(test1) # Lore
      @decision2 = current_dectree2.predict(test2) # This being Andys contribution
      @decision3 = current_dectree3.predict(test3) # This being Bethanys contribution
      @decision4 = current_dectree4.predict(test4) #

      puts "Predicted: Compared to #{test1.last}, #{@decision1}"
      puts "Predicted: Compared to #{test2.last}, #{@decision2}"
      puts "Predicted: Compared to #{test3.last}, #{@decision3}\n"

      @net_outcome = "Lore: #{@decision1} Action: #{@decision2} Magic Type: #{@decision3} Color Hex: #{@decision1}\n"
    end

    # Writes lore logic to a prolog knowledge base by converted tree labels to prolog rules you can reason with.
    def lore_logic
      conversion_sets = {
        "Science mixed with mysticism.."                                             =>               "science(mysticism, mixed).",
        "Institutional horror."                                                      =>          "hospital(instutition, haunted).",
        "Systematic supernatural."                                                   => "supernatural(systematic, environmental).",
        "Clinical corruption."                                                       =>           "hospital(corruption, haunted).",
        "General term for damage control."                                           =>   "language(idiomatic, public_relations).",
      }, {
        "To hop from raft to raft."                                                                 =>               "character(action, buisaut).",
        "To hold onto a ledge."                                                                     =>          "character(action, etreintetana).",
        "To waltz in special made shoes."                                                           =>             "character(action, getawaltz).",
        "To bite the neck of enemies."                                                              =>          "character(action, morsurenekku).",
        "Smashing or shoveling enemeies after finding a hammer."                                    =>              "character(action, matraque).",
        "Scooping up dirt or contamination in haunted areas after finding a shovel."                =>                "character(action, sekupu).",
        "To slow down your walk as if to sneak."                                                    =>                "character(action, flaner).",
        "Strangling enemies after off your tee shirt."                                              =>                "character(action, wurgen).",
        "An extra powerful attack that happens when enemy is near death to make sure they're dead." =>        "character(action, coupe_de_grace).",
        "Light a room or passage after finding a flashlight."                                       =>            "character(action, raitosalle).",
        "Disarm a trap by sending in a monster decoy."                                              =>        "character(action, busokaijoplege).",
        "Find tools scattered around the house."                                                    =>          "character(action, trouvertsuru).",
        "Exit the sub-menu."                                                                        =>                 "character(action, viola).",
        "Play an example video after a wrong decision."                                             =>       "character(action, l_appel_du_vide).",
        "Changes the subject mid conversation, similar to skipping."                                => "character(action, passer_du_coq_a_l_ane).",
     }, {
        "Floating Magic"      =>   "character(magic, floating).", #   0.5  #9ADEF4 Air       / Float
        "Drowning Magic"      =>   "character(magic, drowning).", #  12.5  #397A8E Water     / Drowning
        "Sandstorm Magic"     =>  "character(magic, sandstorm).", #  25.0  #A9A85F Sand      / Duststorm
        "Poison Magic"        =>     "character(magic, poison).", #  37.5  #56756C Moss      / Poison
        "Corruption Magic"    => "character(magic, corruption).", #  50.0  #3C3733 Stone     / Corruption
        "Death Magic"         =>      "character(magic, death).", #  75.0  #1F1F21 Death     / Void
        "Healing Magic"       =>    "character(magic, healing).", #  87.5  #FFFFFF Recovery  / Healing
        "Union Magic"         =>      "character(magic, union).", # 100.0 #2B2A2B Union     / Combining Elements
      }, {
        "#9ADEF4 Air Blue"      =>    "color(air,   blue).",
        "#397A8E Water Blue"    =>    "color(water, blue).",
        "#A9A85F Sand Brown"    =>    "color(sand, brown).",
        "#56756C Moss Green"    =>    "color(moss, green).",
        "#3C3733 Stone Grey"    =>    "color(stone, grey).",
        "#1F1F21 Death Black"   =>   "color(death, black).",
        "#FFFFFF Healing White" => "color(healing, white).",
        "#2B2A2B Union Black"   =>   "color(union, black).",
      }

      lore_set   = conversion_sets[0]
      action_set = conversion_sets[1]
      magic_set  = conversion_sets[2]
      color_set  = conversion_sets[3]

      translation1 = lore_set[@decision1]
      translation2 = lore_set[@decision2]
      translation3 = lore_set[@decision3]
      translation4 = lore_set[@decision4]

      File.open("_knowledgebase/gamelogic.pl", "w") { |f|
        f.puts translation1
        f.puts translation2
        f.puts translation3
        f.puts translation4
      }
    end

    def self.lore_stats
      require "naive_bayes"

      lore_stats   = NaiveBayes.new(:shinshusci, :inhorei, :yokanozen, :ceriderinshos, :seigyo_des_dommages)

      lore_stats.train(:shinshusci,          "Science mixed with mysticism..",         "mystic science")
      lore_stats.train(:inhorei,             "Institutional horror.",            "institutional horror")
      lore_stats.train(:yokanozen,           "Systematic supernatural.",                    "yokanozen")
      lore_stats.train(:ceriderinshos,       "Clinical corruption.",                "corrupted clinics")
      lore_stats.train(:seigyo_des_dommages, "General term for damage control.",       "damage control")

      @classification = lore_stats.classify(@decision1)

      print @classification
      puts " "
    end

    def self.action_stats
      require "naive_bayes"

      action_stats = NaiveBayes.new(:buisaut,
                                    :etreintetana,
                                    :getawaltz,
                                    :morsurenekku,
                                    :matraque,
                                    :sekupu,
                                    :flaner,
                                    :wurgen,
                                    :coupe_de_grace,
                                    :raitosalle,
                                    :busokaijoplege,
                                    :trouvertsuru,
                                    :viola,
                                    :lappel_du_vide,
                                    :passer_de_coq_a_lane)

      action_stats.train(:buisaut,              "To hop from raft to raft.",                                                                                 "Buisaut")
      action_stats.train(:etraintetana,         "To hold onto a ledge.",                                                                                "Etreintetana")
      action_stats.train(:getawaltz,            "To waltz in special made shoes.",                                                                         "Getawaltz")
      action_stats.train(:morsurenekku,         "To bite the neck of enemies.",                                                                         "Morsurenekku")
      action_stats.train(:matraque,             "Smashing or shoveling enemeies after finding a hammer.",                                                   "Matraque")
      action_stats.train(:sekupu,               "Scooping up dirt or contamination in haunted areas after finding a shovel.",                                 "Sekupu")
      action_stats.train(:flaner,               "To slow down your walk as if to sneak.",                                                                     "Flaner")
      action_stats.train(:wurgen,               "Strangling enemies after off your tee shirt.",                                                               "Wurgen")
      action_stats.train(:coupe_de_grace,       "An extra powerful attack that happens when enemy is near death to make sure they're dead.",          "Coupe De Grace")
      action_stats.train(:raitosalle,           "Light a room or passage after finding a flashlight.",                                                    "Raitosalle")
      action_stats.train(:busokaijolege,        "Disarm a trap by sending in a monster decoy.",                                                       "Busokaijoplege")
      action_stats.train(:trouvertsuru,         "Find tools scattered around the house.",                                                               "Trouvertsuru")
      action_stats.train(:viola,                "Exit the sub-menu.",                                                                                          "Viola")
      action_stats.train(:lappel_de_vide,       "Play an example video after a wrong decision.",                                                     "L Appel Du Vide")
      action_stats.train(:passer_de_coq_a_lane, "Changes the subject mid conversation, similar to skipping.",                                  "Passer Du Coq A L'Ane")

      @classification = lore_stats.classify(@decision2)

      print @classification
      puts " "
    end

    def self.magic_stats
      require "naive_bayes"

      magic_stats  = NaiveBayes.new(:anos_ea_mahos,
                                    :anos_denki_mahos,
                                    :anos_tenchi_mahos,
                                    :anos_dokubutsu_mahos,
                                    :anos_oshoko_mahos,
                                    :anos_shi_mahos,
                                    :anos_kaiyo_mahos,
                                    :anos_yunion_mahos)

      magic_stats.train(:anos_ea_mahos,          "Floating Magic",   "floating")      #   0.5 #9ADEF4 Air        / Float
      magic_stats.train(:anos_denki_mahos,       "Drowning Magic",   "drowning")      #  12.5 #397A8E Water      / Drowning
      magic_stats.train(:anos_tenchi_mahos,     "Sandstorm Magic",  "sandstorm")      #  25.0 #A9A85F Sand       / Duststorm
      magic_stats.train(:anos_dokubutsu_mahos,     "Poison Magic",     "poison")      #  37.5 #56756C Moss       / Poison
      magic_stats.train(:anos_oshoko_mahos,    "Corruption Magic", "corruption")      #  50.0 #3C3733 Stone      / Corruption
      magic_stats.train(:anos_shi_mahos,            "Death Magic",      "death")      #  75.0 #1F1F21 Death      / Void
      magic_stats.train(:anos_kaiyos_mahos,       "Healing Magic",    "healing")      #  87.5 #FFFFFF Recovery   / Healing
      magic_stats.train(:anos_yunion_mahos,         "Union Magic",      "union")      # 100.0 #2B2A2B Union      / Combining Elements

      @classification = magic_stats.classify(@decision3)

      print @classification
      puts " "
    end

    def self.color_stats
      require "naive_bayes"

      color_stats  = NaiveBayes.new(:anos_ea_buros,          :anos_denki_buros,  :anos_tenchi_buraun,
                                    :anos_dokubutsu_midoros, :anos_oshoko_guros, :anos_shi_kuros,
                                    :anos_kaiyo_blancos,     :anos_yunion_kuros)

      color_stats.train(:anos_ea_buros,               "#9ADEF4 Air Blue",      "air blue")
      color_stats.train(:anos_denki_buros,          "#397A8E Water Blue",    "water blue")
      color_stats.train(:anos_tenchi_buraun,        "#A9A85F Sand Brown",    "sand brown")
      color_stats.train(:anos_dokubutsu_midoros,    "#56756C Moss Green",    "moss green")
      color_stats.train(:anos_oshoko_guros,         "#3C3733 Stone Grey",    "stone grey")
      color_stats.train(:anos_shi_kuros,           "#1F1F21 Death Black",   "death black")
      color_stats.train(:anos_kaiyo_blancos,     "#FFFFFF Healing White", "healing white")
      color_stats.train(:anos_yunion_kuros,        "#2B2A2B Union Black",   "union black")

      @classification = color_stats.classify(@decision4)

      print @classification
      puts " "
    end

    def self.lore_dictionary
      conversion_sets = {
        "Science mixed with mysticism.."   => "Shinshusci",
        "Institutiona horror."             => "Inhorei",
        "Systematic supernatural."         => "Yokanozen",
        "Clinical corruption."             => "Ceriderinshos",
        "General term for damage control." => "Seigyo Des Dommmages",
      }, {
        "To hop from raft to raft."                                                                    => "Buisaut",
        "To hold onto a ledge."                                                                        => "Etreintetana",
        "To waltz in special made shoes."                                                              => "Getawaltz",
        "To bite the neck of enemies."                                                                 => "Morsurenekku",
        "Smashing or shoveling enemeies after finding a hammer."                                       => "Matraque",
        "Scooping up dirt or contamination in haunted areas after finding a shovel."                   => "Sekupu",
        "To slow down your walk as if to sneak."                                                       => "Flaner",
        "Strangling enemies after off your tee shirt."                                                 => "Wurgen",
        "An extra powerful attack that happens when enemy is near death to make sure they're dead."    => "Coupe De Grace",
        "Light a room or passage after finding a flashlight."                                          => "Raitosalle",
        "Disarm a trap by sending in a monster decoy."                                                 => "Busokaijoplege",
        "Find tools scattered around the house."                                                       => "Trouvertsuru",
        "Exit the sub-menu."                                                                           => "Viola",
        "Play an example video after a wrong decision."                                                => "L Appel Du Vide",
        "Changes the subject mid conversation, similar to skipping."                                   => "Passer Du Coq A L'Ane",
      }, {
        "Floating Magic"      =>        "Anos Ea Mahos", #  0.5  #9ADEF4 Air       / Float
        "Drowning Magic"      =>     "Anos Denki Mahos", # 12.5  #397A8E Water     / Drowning
        "Sandstorm Magic"     =>    "Anos Tenchi Mahos", # 25.0  #A9A85F Sand      / Duststorm
        "Poison Magic"        => "Anos Dokubutsu Mahos", # 37.5  #56756C Moss      / Poison
        "Corruption Magic"    =>    "Anos Oshoko Mahos", # 50.0  #3C3733 Stone     / Corruption
        "Death Magic"         =>       "Anos Shi Mahos", # 75.0  #1F1F21 Death     / Void
        "Healing Magic"       =>     "Anos Kaiyo Mahos", # 87.5  #FFFFFF Recovery  / Healing
        "Union Magic"         =>    "Anos Yunion Mahos", # 100.0 #2B2A2B Union     / Combining Elements
      }, {
        "#9ADEF4 Air Blue"      =>          "#9ADEF4 Anos Ea Buros", # The color of air magic.
        "#397A8E Water Blue"    =>       "#397A8E Anos Denki Buros", # The color of water magic.
        "#A9A85F Sand Brown"    =>     "#A9A85F Anos Tenchi Buraun", # The color of sandstorm magic.
        "#56756C Moss Green"    => "#56756C Anos Dokubutsu Midoros", # The color of poison magic.
        "#3C3733 Stone Grey"    =>      "#3C3733 Anos Oshoko Guros", # The color of corruption magic.
        "#1F1F21 Death Black"   =>         "#1F1F21 Anos Shi Kuros", # The color of death magic.
        "#FFFFFF Healing White" =>             "Anos Kaiyo Blancos", # The color of healing magic.
        "#2B2A2B Union Black"   =>              "Anos Yunion Kuros", # The color of Union magic where each element is combined.
      }

      lore_set   = conversion_sets[0]
      action_set = conversion_sets[1]
      magic_set  = conversion_sets[2]
      color_set  = conversion_sets[3]

      translation1 = lore_set[@decision1]
      translation2 = lore_set[@decision2]
      translation3 = lore_set[@decision3]
      translation4 = lore_set[@decision4]

      File.open("_translation/gamelogic.txt", "w") { |f|
        f.puts translation1
        f.puts translation2
        f.puts translation3
        f.puts translation4
      }
    end
  end
end
