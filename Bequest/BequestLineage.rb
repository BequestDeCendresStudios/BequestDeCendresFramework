module Bequest
  class LunarCalender
    ######################################################################################
    #                                    Lunar Calender                                  #
    ######################################################################################
    # This establishes the basic mechanics of the Lunar Calender system that modifies    #
    # the player's base metrics on what the current lunar phase, with it being more      #
    # advised to switch to Bequest mechanics during the time they are weakest, then      #
    # using the Gribatomaton for when the lunar phase when Bear Men and Kumabatto poses  #
    # the least challenge to them.                                                       #
    #                                                                                    #
    # It remains to be seen whether this will continue to be relevant as I refine this   #
    # this Bequest RPG framework.                                                        #
    ######################################################################################

    def self.global_stats
      # Standard Operations
      $stalemates    = 0 # Keeps track of how many stalemates
      $player_struck = 0 # Keeps track of how many times player hit the enemy.
      $enemy_struck  = 0 # Keeps track of how many times enemy hit the player.

      # Amount of days in a year.
      $current_day = 0
      $lunar_ticks = 30

      ## Current Lunar Phase
      $current_phase = 0

      # Yes or no spider
      $has_pet_spider = false
    end

    def self.new_moon
      $player_hp   = 10 * $player_level
      $player_atk  =  2 * $player_level
      $player_heal =  2 * $player_level

      $enemy_hp  = 2  * $enemy_level
      $enemy_atk = 10 * $enemy_level # player gets 5 damage when factoring in healing rate.
    end

    def self.waxing_crescent
      $player_hp   = 9 * $player_level
      $player_atk  = 2 * $player_level
      $player_heal = 2 * $player_level

      $enemy_hp  = 4 * $enemy_level
      $enemy_atk = 8 * $enemy_level # Player gets exactly 4 damage when factoring in healing rate as defence.
    end

    def self.first_quarter
      $player_hp   = 7 * $player_level
      $player_atk  = 2 * $player_level
      $player_heal = 2 * $player_level

      $enemy_hp  = 6 * $enemy_level
      $enemy_atk = 6 * $enemy_level # player gets 3 damage when factoring in healing rate.
    end

    def self.waxing_gibbous
      $player_hp   = 6 * $player_level
      $player_atk  = 2 * $player_level
      $player_heal = 2 * $player_level

      $enemy_hp    = 8 * $enemy_level
      $enemy_atk   = 4 * $enemy_level # Player gets exactly 2 Damage when factoring in healing as defence. 
    end

    def self.full_moon
      $player_hp   = 4 * $player_level
      $player_atk  = 2 * $player_level
      $player_heal = 2 * $player_level

      $enemy_hp  = 10 * $enemy_level
      $enemy_atk =  2 * $enemy_level # Player gets exactly 1 damage when factoring in healing rate as defence.
    end

    def self.waning_gibbous
      $player_hp   = 6 * $player_level
      $player_atk  = 2 * $player_level
      $player_heal = 2 * $player_level

      $enemy_hp  = 8 * $enemy_level
      $enemy_atk = 4 * $enemy_level # Player gets exactly 2 damage when factoring in healing as defence.
    end

    def self.last_quarter
      $player_hp  = 7 * $player_level
      $player_atk = 2 * $player_level

      $enemy_hp  = 4 * $enemy_level
      $enemy_atk = 6 * $enemy_level # Player gets exactly 3 damage when factoring in healing as defence.
    end

    def self.waning_crescent
      $player_hp   = 8 * $player_level
      $player_atk  = 2 * $player_level
      $player_heal = 2 * $player_level # player gets exactly 4 damage when factoring in healing as defence.

      $enemy_hp  = 2 * $enemy_level
      $enemy_atk = 8 * $enemy_level
    end

    def self.lunar_cycle
      lunar_phases = [0, 1, 2, 3, 4, 5, 6, 7]

      # The current lunar phase mod 7
      current_phase  = $current_phase % 7
      #$current_phase = $current_phase + 1 % 7

      if    current_phase == lunar_phases[0]
        puts "\e[38;2;187;127;118mLa phase lunaire actuelle est: New Moon. Réinitialisation des statistiques du joueur...\e[0m"

        sleep(1)

        Bequest::LunarCalender.new_moon
      elsif current_phase == lunar_phases[1]
        puts "\e[38;2;187;127;118mLa phase lunaire actuelle est: Waxing Gibbous. Réinitialisation des statistiques du joueur...\e[0m"

        sleep(1)

        Bequest::LunarCalender.waxing_crescent
      elsif current_phase == lunar_phases[2]
        puts "\e[38;2;187;127;118mLa phase lunaire actuelle est: First Quarter. Réinitialisation des statistiques du joueur...\e[0m"

        sleep(1)

        Bequest::LunarCalender.first_quarter
      elsif current_phase == lunar_phases[3]
        puts "\e[38;2;187;127;118mLa phase lunaire actuelle est: Waxing Gibbous. Réinitialisation des statistiques du joueur...\e[0m"

        sleep(1)

        Bequest::LunarCalender.waxing_gibbous
      elsif current_phase == lunar_phases[4]
        puts "\e[38;2;187;127;118mLa phase lunaire actuelle est: Full_moon. Réinitialisation des statistiques du joueur...\e[0m"

        sleep(1)

        Bequest::LunarCalender.full_moon
      elsif current_phase == lunar_phases[5]
        puts "\e[38;2;187;127;118mLa phase lunaire actuelle est: Waning Gibbous. Réinitialisation des statistiques du joueur...\e[0m"

        sleep(1)

        Bequest::LunarCalender.waning_gibbous
      elsif current_phase == lunar_phases[6]
        puts "\e[38;2;187;127;118mLa phase lunaire actuelle est: Last Quarter. Réinitialisation des statistiques du joueur...\e[0m"

        sleep(1)

        Bequest::LunarCalender.last_quarter
      elsif current_phase == lunar_phases[7]
        puts "\e[38;2;187;127;118mLa phase lunaire actuelle est: Waning Crescent. Réinitialisation des statistiques du joueur...\e[0m"

        sleep(1)

        Bequest::LunarCalender.waning_crescent
      end

      sleep(1.5)
    end
  end

  end

  class LineageSelection
    ######################################################################################
    #                           Lineage Based Character Selection                        #
    ######################################################################################
    # This aims to replace traditional methods of character selection, by basing name    #
    # selection on what lineage in a family tree a character is desceded from. This      #
    # lineage is based currently on people whom are descended from Hemato-Tomato, but    #
    # will eventually include alternative timelines where Ehena-Marie wasn't executed    #
    # by guillotine, or other scenarios like artificial descendants created in the       #
    # artificial afterlife engine.                                                       #
    #                                                                                    #
    # This system is split between first generation, second generation, and third        #
    # generation descendants, and also a theoretical generation that is artificially     #
    # simulated inside of the afterlife engine. Verified descendants are named after     #
    # French paintaers and musicians, while retaining the japanese traditional of having #
    # Tomato be the sir name.                                                            #
    ######################################################################################

    def self.hemato_tomato
      # Confirmed second generational branch.
      second_generation = [
        [["Tomato-Chieko", "Tomato-Chieko"], ["Tomato-Chieko", "Tomato-Yoko"], ["Tomato-Chieko", "Tomato-Nori"]],
        [["Tomato-Yoko",   "Tomato-Chieko"], ["Tomato-Yoko",   "Tomato-Yoko"], ["Tomato-Yoko",   "Tomato-Nori"]],
        [["Tomato Nori",   "Tomato-Chieko"], ["Tomato-Nori",   "Tomato-Yoko"], ["Tomato-Nori",   "Tomato-Nori"]],
      ], [
        [[0.33, 0.33], [0.33, 0.33], [0.33, 0.33]],
        [[0.33, 0.33], [0.33, 0.33], [0.33, 0.33]],
        [[0.33, 0.33], [0.33, 0.33], [0.33, 0.33]],
      ]

      ## Confirmed Third generational branches.
      third_generation_first_branch = [
        [["Tomato-Chairoscuro", "Tomato-Chairoscuro"], ["Tomato-Chairoscuro", "Tomato-Deco"], ["Tomato-Chairoscuro", "Tomato-Modernis"], ["Tomato-Chairscuro", "Tomato-Sepia"], ["Tomato-Chairoscuro", "Tomato-Brutalist"]],
        [["Tomato-Deco",        "Tomato-Chairoscuro"], ["Tomato-Deco",        "Tomato-Deco"], ["Tomato-Deco",        "Tomato-Modernis"], ["Tomato-Deco",       "Tomato-Sepia"], ["Tomato-Deco",        "Tomato-Brutalist"]],
        [["Tomato-Modernis",    "Tomato-Chairoscuro"], ["Tomato-Modernis",    "Tomato-Deco"], ["Tomato-Modernis",    "Tomato-Modernis"], ["Tomato-Modernis",   "Tomato-Sepia"], ["Tomato-Modernis",    "Tomato-Brutalist"]],
        [["Tomato-Sepia",       "Tomato-Chairoscuro"], ["Tomato-Sepia",       "Tomato-Deco"], ["Tomato-Sepia",       "Tomato-Modernis"], ["Tomato-Sepia",      "Tomato-Sepia"], ["Tomato-Sepia",       "Tomato-Brutalist"]],
        [["Tomato-Brutalist",   "Tomato-Chairoscuro"], ["Tomato-Brutalist",   "Tomato-Deco"], ["Tomato-Brutalist",   "Tomato-Modernis"], ["Tomato-Brutalist",  "Tomato-Sepia"], ["Tomato-Brutalist",   "Tomato-Brutalist"]],
      ], [
        [[0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2]],
        [[0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2]],
        [[0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2]],
        [[0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2]],
        [[0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2]],
      ]

      third_generation_second_branch = [
        [["Tomato-Eugenie", "Tomato-Eugenie"], ["Tomato-Eugenie", "Tomato-Marie"], ["Tomato-Eugenie", "Tomato-Anna"], ["Tomato-Eugenie", "Tomato-Pauline"], ["Tomato-Eugenie", "Tomato-Louise"]],
        [["Tomato-Marie",   "Tomato-Eugenie"], ["Tomato-Marie",   "Tomato-Marie"], ["Tomato-Marie",   "Tomato-Anna"], ["Tomato-Marie",   "Tomato-Pauline"], ["Tomato-Marie",   "Tomato-Louise"]],
        [["Tomato-Anna",    "Tomato-Eugenie"], ["Tomato-Anna",    "Tomato-Marie"], ["Tomato-Anna",    "Tomato-Anna"], ["Tomato-Anna",    "Tomato-Pauline"], ["Tomato-Anna",    "Tomato-Louise"]],
        [["Tomato-Pauline", "Tomato-Eugenie"], ["Tomato-Pauline", "Tomato-Marie"], ["Tomato-Pauline", "Tomato-Anna"], ["Tomato-Pauline", "Tomato-Pauline"], ["Tomato-Pauline", "Tomato-Louise"]],
        [["Tomato-Louise",  "Tomato-Eugenie"], ["Tomato-Louise",  "Tomato-Marie"], ["Tomato-Louise",  "Tomato-Anna"], ["Tomato-Louise",  "Tomato-Pauline"], ["Tomato-Louise",  "Tomato-Louise"]],
      ], [
        [[0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2]],
        [[0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2]],
        [[0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2]],
        [[0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2]],
        [[0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2]],
      ]

      ## Second Generational Data
      second_gen_names         = second_generation[0]
      second_gen_probabilities = second_generation[1]

      ## Third Generational Data
      third_gen_names_fb         = third_generation_first_branch[0]
      third_gen_probabilities_fb = third_generation_first_branch[1]

      third_gen_names_sb         = third_generation_second_branch[0]
      third_gen_probabilities_sb = third_generation_second_branch[1]

      what_generation = [0, 1]

      choose_generation = what_generation.sample

      # Chooses a name based on a random lineage from Hemato-Tomato.
      if    0 == choose_generation
        ### Character Selection
        row_options = [0, 1, 2]]
        col_options = [0, 1, 2]
        arr_options = [0, 1]

        cur_row = row_options.sample
        cur_col = col_options.sample
        cur_arr = arr_options.sample

        $player_name == second_gen_names[cur_row][cur_col][cur_arr]
      elsif 1 == choose_generation
        ### Character Selection
        row_options = [0, 1, 2, 3, 4]
        col_options = [0, 1, 2, 3, 4]
        arr_options = [0, 1]

        cur_row = row_options.sample
        cur_col = col_options.sample
        cur_arr = arr_options.sample

        what_branch = [0, 1]

        chosen_branch = what_branch.sample

        if    chosen_branch == 0
          $player_name == third_gen_names_fb[cur_row][cur_col][cur_arr]
        elsif chosen_branch == 1
          $player_name == third_gen_names_sb[cur_row][cur_col][cur_arr]
        else
          $player_name == third_gen_names_fb[cur_row][cur_col][cur_arr]
        end
      else
        $player_name == second_gen_names[cur_row][cur_col][cur_arr]
      end
    end

    def self.ehena_marie
      ### Character Selection
      row_options = [0, 1]
      col_options = [0, 1]
      arr_options = [0, 1]

      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      ## Theoretical third generational branch.
      third_generation_theoretical = [
        [["Tomato Anna-Marie",       "Tomato Anna-Marie"], ["Tomato Anna-Marie",    "Tomato Annette-Marie"]],
        [["Tomato Annette-Marie", "Tomato Annette-Marie"], ["Tomato Annette-Marie", "Tomato Annette-Marie"]],
      ], [
        [[0.5, 0.5], [0.5, 0.5]],
        [[0.5, 0.5], [0.5, 0.5]],
      ]

      ## Third Generational Data
      third_gen_names_th         = third_generation_theoretical[0]
      third_gen_probabilities_th = third_generation_theoratical[1]


    end

    def self.choose_name
      context_node = [
        "United States",
        "Guillotine Dynasty",
        "They are the American family that inherited the job of using the guillotine from the French dynasty of executioners.",
        "1793-1981", "2017-2045" ]

      # Confirmed first generation.
      first_generation = [
        [["Hemato-Tomato", "Hemato-Tomato"], ["Hemato-Tomato",   "Ehena-Marie"]],
        [["Ehena-Marie",     "Ehena-Marie"], ["Ehena-Marie",   "Hemato-Tomato"]],
      ], [
        [[0.5, 0.5], [0.5, 0.5]],
        [[0.5, 0.5], [0.5, 0.5]],
      ]

      ## Context Data
      location          = context_node[0]
      occupation        = context_node[1]
      job_description   = context_node[2]
      previous_activity = context_node[3]
      current_activity  = context_node[4]

      puts "  The curent location of #{occupation} is the #{location}. #{job_description} The previous family they inherited from operated between #{previous_activity}. The current #{occupation} operated in the years #{current_activity}."

      ## First Generational Data
      first_gen_names         = first_generation[0]
      first_gen_probabilities = first_generation[1]

      ### Character Selection
      row_options = [0, 1]
      col_options = [0, 1]
      arr_options = [0, 1]

      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      first_gen_name        = first_gen_names[cur_row][cur_col][cur_arr]
      first_gen_probability = first_gen_probabilities[cur_row][cur_col][cur_arr]

      print " You start your journey as: #{first_gen_name}. "

      if    first_gen_name == "Hemato-Tomato"; puts " Your girlfriend had been Ehena-Marie, who was executed by guillotine. [ #{first_gen_name}, #{first_gen_probability} ]"

        hemato_tomato
      elsif first_gen_name ==   "Ehena-Marie"; puts " Your lover had been Hemato-Tomato, and the guillotine blade drips with blood from your beheading. [ #{first_gen_name}, #{first_gen_probability} ]"

        Bequest::LineageSelection.ehena_marie
      else
        Bequest::LineageSelection.hemato_tomato
      end
    end
  end

  class Language
    ######################################################################################
    #                            Procedurally Generated Quips                            #
    ######################################################################################
    # This is for non scripted dialogue events that emerge in situations where the       #
    # character the player controls is not actively in a story events, but you want to   #
    # have realistic sounding French language based on the way that Francais is actually #
    # spoken in Quebec, Paris, and other places.                                         #
    #                                                                                    #
    # When I eventually include statistic models, I may end up needing to roll my own    #
    # statistical systems as most systems out there aren't really design with the idea   #
    # of combining decision trees and naive bayes: which is basically 3D arrays that     #
    # produce networks of symbols, labels, and probabilities. You're not likely to       #
    # encounter these in the game itself.                                                #
    ######################################################################################

    def self.contrastive
      ## The Call
      ##           la pomme  la banane  le granit
      ## la pomme  p,p       p,b        p,g
      ## la banane b,p       b,b        b,g
      ## le grenit g,p       g,b        g,g

      gendered_nouns_set1      = [
        [["Cette pomme",  "Cette pomme"], ["Cette pomme",  "Cette banane"], ["Cette pomme",  "Cette granit"]],
        [["Cette banane", "Cette pomme"], ["Cette banane", "Cette banane"], ["Cette banane", "Cette granit"]],
        [["Cette granit", "Cette pomme"], ["Cette granit", "Cette banane"], ["Cette granit", "Cette granit"]],
      ]

      gns1_row_options = [0, 1, 2]
      gns1_col_options = [0, 1, 2]
      gns1_arr_options = [0, 1]

      gns1_cur_row = gns1_row_options.sample
      gns1_cur_col = gns1_col_options.sample
      gns1_cur_arr = gns1_arr_options.sample

      gns1 = gendered_nouns_set1[gns1_cur_row][gns1_cur_col][gns1_cur_arr]

      #        rouge jaune violet
      # rouge  r,r   r,j   r,v
      # jaune  j,r   j,j   j,v
      # violet v,r   v,j   v,v

      adjectives_set1          = [
        [["rouge",  "rouge"], ["rouge",  "jaune"], ["rouge",  "violet"]],
        [["jaune",  "rouge"], ["jaune",  "jaune"], ["jaune",  "violet"]],
        [["violet", "rouge"], ["violet", "jaune"], ["violet", "violet"]],
      ]

      as1_row_options = [0, 1, 2]
      as1_col_options = [0, 1, 2]
      as1_arr_options = [0, 1]

      as1_cur_row = as1_row_options.sample
      as1_cur_col = as1_col_options.sample
      as1_cur_arr = as1_arr_options.sample

      as1 = adjectives_set1[as1_cur_row][as1_cur_col][as1_cur_arr]

      #              je mange  je ne mange je jute  je ne jute
      # je mange     jm, jm    jm, jnm     jm, jj   jm,jnj
      # je ne mange  jnm, jm   jnm, jnm    jnm, jj  jnm, jnj
      # je jute      jj, jm    jj, jnm     jj, jj   jj, jnj
      # je ne jute   jnj, jm   jnj, jnm    jnj, jj  jnj, jnj

      subjective_verbs_set1    = [
        [ ["Je mange",    "Je mange"], ["Je mange",    "Je ne mange"], ["Je mange",    "Je jute"], ["Je mange",    "Je ne jute"]],
        [ ["Je ne mange", "Je mange"], ["Je ne mange", "Je ne mange"], ["Je ne mange", "Je jute"], ["Je ne mange", "Je ne jute"]],
        [ ["Je jute",     "Je mange"], ["Je jute",     "Je ne mange"], ["Je jute",     "Je jute"], ["Je jute",     "Je ne jute"]],
        [ ["Je ne jute",  "Je mange"], ["Je ne jute",  "Je ne mange"], ["Je ne jute",  "Je jute"], ["Je ne jute",  "Je ne jute"]],
      ]

      svs1_row_options = [0, 1, 2, 3]
      svs1_col_options = [0, 1, 2, 3]
      svs1_arr_options = [0, 1]

      svs1_cur_row = svs1_row_options.sample
      svs1_cur_col = svs1_col_options.sample
      svs1_cur_arr = svs1_arr_options.sample

      svs1 = subjective_verbs_set1[svs1_cur_row][svs1_cur_col][svs1_cur_arr]

      #            lentiment quicely
      # lentement  l,l       l,q
      # quicely    q,l       q,q

      adverb_punctuation_set1  = [
        [["lentement,", "lentement,"], ["lentement,", "quicely,"]],
        [["quicely,",   "lentement,"], ["quicely,",   "quicely,"]],
      ]

      aps1_row_options = [0, 1]
      aps1_col_options = [0, 1]
      aps1_arr_options = [0, 1]

      aps1_cur_row = aps1_row_options.sample
      aps1_cur_col = aps1_col_options.sample
      aps1_cur_arr = aps1_arr_options.sample

      aps1 = adverb_punctuation_set1[aps1_cur_row][aps1_cur_col][aps1_cur_arr]

      #contrastive_set1         = [
      #]

      ## The Responce
      gendered_nouns_set2      = [
        [["mais cette pomme",        "mais cette pomme"], ["mais cette pomme",  "mais cette banane"], ["mais cette pomme",  "mais cette granit"]],
        [["mais cette la banane", "mais cette la pomme"], ["mais cette banane", "mais cette banane"], ["mais cette banane", "mais cette granit"]],
        [["mais cette le granit", "mais cette la pomme"], ["mais cette granit", "mais cette banane"], ["mais cette granit", "mais cette granit"]],
      ]

      gns2_row_options = [0, 1, 2]
      gns2_col_options = [0, 1, 2]
      gns2_arr_options = [0, 1]

      gns2_cur_row = gns2_row_options.sample
      gns2_cur_col = gns2_col_options.sample
      gns2_cur_arr = gns2_arr_options.sample

      gns2 = gendered_nouns_set2[gns2_cur_row][gns2_cur_col][gns2_cur_arr]

      adjectives_set2          = [
        [["rouge",  "rouge"], ["rouge",  "jaune"], ["rouge",  "violet"]],
        [["jaune",  "rouge"], ["jaune",  "jaune"], ["jaune",  "violet"]],
        [["violet", "rouge"], ["violet", "jaune"], ["violet", "violet"]],
      ]

      as2_row_options = [0, 1, 2]
      as2_col_options = [0, 1, 2]
      as2_arr_options = [0, 1]

      as2_cur_row = as2_row_options.sample
      as2_cur_col = as2_col_options.sample
      as2_cur_arr = as2_arr_options.sample

      as2 = adjectives_set2[as2_cur_row][as2_cur_col][as2_cur_arr]

      subjective_verbs_set2    = [
        [["Je mange",    "Je mange"], ["Je mange",    "Je ne mange"], ["Je mange",    "Je jute"], ["Je mange",    "Je ne jute"]],
        [["Je ne mange", "Je mange"], ["Je ne mange", "Je ne mange"], ["Je ne mange", "Je jute"], ["Je ne mange", "Je ne jute"]],
        [["Je jute",     "Je mange"], ["Je jute",     "Je ne mange"], ["Je jute",     "Je jute"], ["Je jute",     "Je ne jute"]],
        [["Je ne jute",  "Je mange"], ["Je ne jute",  "Je ne mange"], ["Je ne jute",  "Je jute"], ["Je ne jute",  "Je ne jute"]],
      ]

      svs2_row_options = [0, 1, 2, 3]
      svs2_col_options = [0, 1, 2, 3]
      svs2_arr_options = [0, 1]

      svs2_cur_row = svs2_row_options.sample
      svs2_cur_col = svs2_col_options.sample
      svs2_cur_arr = svs2_arr_options.sample

      svs2 = subjective_verbs_set2[svs2_cur_row][svs2_cur_col][svs2_cur_arr]

      adverb_punctuation_set2 = [
        [["lentement.", "lentement."], ["lentement.", "quicely."]],
        [["quicely.",   "lentement."], ["quicely.",   "quicely."]],
      ]

      aps2_row_options = [0, 1]
      aps2_col_options = [0, 1]
      aps2_arr_options = [0, 1]

      aps2_cur_row = aps2_row_options.sample
      aps2_cur_col = aps2_col_options.sample
      aps2_cur_arr = aps2_arr_options.sample

      aps2 = adverb_punctuation_set2[aps2_cur_row][aps2_cur_col][aps2_cur_arr]

      ## Generates the actual training data.
      phrase = "#{gns1} #{as1} #{svs1} #{aps1} #{gns2} #{as2} #{svs2} #{aps2}"

      print ">> "
      puts phrase
    end

    def self.standard
      #          le      la      les
      # le   le, le  le, la  le, les
      # la   la, le  la, la  la, les
      # les les, le les, la les, les
      
      #         pomme orange banane
      # pomme   p,p   p,o    p,b
      # orange  o,p   o,o    o,b
      # banane  b,p   b,o    b,b
      
      #         rouge orange jaune
      # rouge   r,r   r,o    r,j
      # orange  o,r   o,o    o,j
      # jaune   j,r   j,o    j,j
      
      #               es             es ne
      # es     es,    es     es,    es ne
      # es ne  es ne, es     es ne, es ne  
      
      #        mange jete
      # mange  m,m   m,j
      # jete   j,m   j,j

      possible_word_classes = [
        [ ["Le",  "Le"], ["Le",  "La"], ["Le",  "Les"] ],
        [ ["La",  "Le"], ["La",  "La"], ["La",  "Les"] ],
        [ ["Les", "Le"], ["Les", "La"], ["Les", "Les"] ],
      ]

      possible_classified_nouns = [
        [ ["pomme",  "pomme"], ["pomme",  "orange"], ["pomme",  "banane"] ],
        [ ["orange", "pomme"], ["orange", "orange"], ["orange", "banane"] ],
        [ ["banane", "pomme"], ["banane", "orange"], ["banane", "banane"] ],
      ]

      possible_adjectives = [
        [ ["rouge",  "rouge"], ["rouge",  "orange"], ["rouge",  "jaune"] ],
        [ ["orange", "rouge"], ["orange", "orange"], ["orange", "jaune"] ],
        [ ["jaune",  "rouge"], ["jaune",  "orange"], ["jaune",  "jaune"] ],
      ]

      possible_subjects = [
        [["es",    "es"], ["es",    "es ne"]],
        [["es ne", "es"], ["es ne", "es ne"]],
      ]
      
      possible_verbs = [
        [["mange", "mange"], ["mange", "jete"]],
        [["jete",  "mange"], ["jete",  "jete"]],
      ]

      ## Effects what class noun and adjective is chosen.
      row_class_noun_adjective = [0, 1, 2]
      col_class_noun_adjective = [0, 1, 2]
      arr_class_noun_adjective = [0, 1]
      
      cur_row_class_noun_adjective = row_class_noun_adjective.sample
      cur_col_class_noun_adjective = col_class_noun_adjective.sample
      cur_arr_class_noun_adjective = arr_class_noun_adjective.sample
      
      word_class       = possible_word_classes[cur_row_class_noun_adjective][cur_col_class_noun_adjective][cur_arr_class_noun_adjective]
      classified_nouns = possible_classified_nouns[cur_row_class_noun_adjective][cur_col_class_noun_adjective][cur_arr_class_noun_adjective]
      adjectives       = possible_adjectives[cur_row_class_noun_adjective][cur_col_class_noun_adjective][cur_arr_class_noun_adjective]
      
      ## Effects what subject and verb is chosen.
      row_subject_verb = [0, 1]
      col_subject_verb = [0, 1]
      arr_subject_verb = [0, 1]
      
      cur_row_subject_verb = row_subject_verb.sample
      cur_col_subject_verb = col_subject_verb.sample
      cur_arr_subject_verb = arr_subject_verb.sample
      
      subjects = possible_subjects[cur_row_subject_verb][cur_col_subject_verb][cur_arr_subject_verb]
      verbs    = possible_verbs[cur_row_subject_verb][cur_col_subject_verb][cur_arr_subject_verb]

      phrase = ">> #{word_class} #{classified_nouns} #{adjectives} #{subjects} #{verbs}."

      print ">> "
      puts phrase
    end

    def self.analyze_standard
      require "decisiontree"
      require "naivebayes"

      standard_syntax = NaiveBayes.new(:correct, :incorrect)
    end

    def self.analyze_contrastive
      require "decisiontree"
      require "naivebayes"

      contrastive_syntax = NaiveBayes.new(:correct, :incorrect)
    end
  end

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

      system("clear")

      loop do
        Bequest::LunarCalender.lunar_cycle

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
          "Ereil"                    => "#{$current_monster_name}",
          "#{$current_monster_name}" => "es ereil a toi.",
        }, {
          "Eblouir"                  => "#{$current_monster_name}",
          "#{$current_monster_name}" => "es eblouir par toi.",
        }, {
          "Plege"                    => "#{$current_monster_name}",
          "#{$current_monster_name}" => "es plege par toi.",
        }

        puts "\n[ Ereil #{$lures} ][ Eblouir #{$stuns} ][ Plege #{$traps} ]"

        print "Regarder par: #{$current_monster_name}, bokette? << "

        @action       = gets.chomp

        if    @action == "Ereil"
          print parsers[0]["Ereil"]
          print " "
          print parsers[0][$current_monster_name]

          $lures = $lures + 1

          print $current_monster_name
          print " "
          Bequest::Enemy.lure_enemy
        elsif @action == "Eblouir"
          print parsers[1]["Eblouir"]
          print " "
          print parsers[1][$current_monster_name]

          $stuns = $stuns + 1

          print $current_monster_name
          print " "
          Bequest::Enemy.stun_enemy
        elsif @action == "Plege"
          print parsers[2]["Plege"]
          print " "
          print parsers[2][$current_monster_name]

          $traps = $traps + 1

          print $current_monster_name
          print " "
          Bequest::Enemy.trap_enemy
        else
          puts ">> Your action is not recognized."
        end
      end

      def self.quip_contrastive
        Bequest::Language.contrastive
      end

      def self.quip_standard
        Bequest::Language.standard
      end

      def self.quip
        #              standard  contrastive
        # standard     s,s       s,c
        # contrastive  c,s       c,c

        formats = [
          [["standard",    "standard"], ["standard",    "contrastive"]],
          [["contrastive", "standard"], ["contrastive", "contrastive"]],
        ]

        row_options = [0, 1]
        col_options = [0, 1]
        arr_options = [0, 1]

        cur_row = row_options.sample
        cur_col = col_options.sample
        cur_arr = arr_options.sample

        current_format = formats[cur_row][cur_col][cur_arr]

        if    current_format ==    "standard"; Bequest::Language.contrastive
        elsif current_format == "contrastive"; Bequest::Language.standard
        else
          Bequest::Language.standard
        end
      end
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
