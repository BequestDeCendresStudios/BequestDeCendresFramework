module EmergentSemanticDialogueFramework
  class SelfReinforcer
    def self.word_class
      word_classes = [
        [
          [["Le",  "Le"], ["Le",  "La"], ["Le",  "Les"]],
          [["La",  "Le"], ["La",  "La"], ["La",  "Les"]],
          [["Les", "Le"], ["Les", "La"], ["Les", "Les"]],
        ], [
          [["Anu",  "Anu"], ["Anu",  "Ana"], ["Anu",  "Anos"]],
          [["Ana",  "Anu"], ["Ana",  "Ana"], ["Ana",  "Anos"]],
          [["Anos", "Anu"], ["Anos", "Ana"], ["Anos", "Anus"]],
        ], [
          [["Lanu",  "Lanu"], ["Lanu",  "Lana"], ["Lanu",  "Lanos"]],
          [["Lana",  "Lanu"], ["Lana",  "Lana"], ["Lana",  "Lanos"]],
          [["Lanos", "Lanu"], ["Lanos", "Lana"], ["Lanos", "Lanos"]],
        ],
      ]

      context_window = [0, 1, 2]
      row_options    = [0, 1, 2]
      col_options    = [0, 1, 2]
      arr_options    = [0, 1]

      cur_con = context_window.sample
      cur_row =    row_options.sample
      cur_col =    col_options.sample
      cur_arr =    arr_options.sample

      @chosen_word_class = word_classes[cur_con][cur_row][cur_col][cur_arr]
    end

    def self.noun
      ho   =        "homme" #,           "ommehay"]
      fe   =        "femme" #,           "emmefay"]
      fi   =        "fille" #,           "illefay"]
      ga   =       "garcon" #,          "arcongay"]
      ta   =        "tante" #,           "antetay"]
      oj   =        "oncle" #,           "cleoney"]
      cofi =  "cousinfille" #,  "ousincay illefay"]
      coga = "cousingarcon" # , "ousincay arcongay"]
      grm  =    "grandmere" # ,    "randgay eremay"]
      grp  =    "grandpere" #,    "randgay erepay"]

      ct   =     "chat" #,      "atchay"]
      ch   =    "chien" #,     "ienchay"]
      oi   =   "oiseau" # ,    "seauoiay"]
      gr   =   "souris" #,     "ourisay"]
      ou   =     "ours" #,      "ursoay"]
      wo   =  "orgueil" #,   "gueiloray"]
      pr   = "ostritch" #, "ritchostray"]
      po   =   "jiraff" #,    "iraffjay"]
      pi   = "écureuil" #,  "ureuilecay"]

      m    = "maison" # , "aisonmay"]
      c    =  "cabin" #,  "abincay"]
      e    =  "ecole" #,   "coleay"]

      oju  =    "ojijaku" #,    "jijakuoay"]
      neo  = "ne ojijaku" #, "ne jijakuoay"]

      # [context window][row][col][arr]

      nouns = [
        [[ho,   ho], [ho,   fe], [ho,   fi], [ho,   ga], [ho,   ta], [ho,   oj], [ho,   cofi], [ho,   coga], [ho,   grm], [ho,   grp]],
        [[fe,   ho], [fe,   fe], [fe,   fi], [fe,   ga], [fe,   ta], [fe,   oj], [fe,   cofi], [fe,   coga], [fe,   grm], [fe,   grp]],
        [[fi,   ho], [fi,   fe], [fi,   fi], [fi,   ga], [fi,   ta], [fi,   oj], [fi,   cofi], [fi,   coga], [fi,   grm], [fi,   grp]],
        [[ga,   ho], [ga,   fe], [ga,   fi], [ga,   ga], [ga,   ta], [ga,   oj], [ga,   cofi], [ga,   coga], [ga,   grm], [ga,   grp]],
        [[ta,   ho], [ta,   fe], [ta,   fi], [ta,   ga], [ta,   ta], [ta,   oj], [ta,   cofi], [ta,   coga], [ta,   grm], [ta,   grp]],
        [[oj,   ho], [oj,   fe], [oj,   fi], [oj,   ga], [oj,   ta], [oj,   oj], [oj,   cofi], [oj,   coga], [oj,   grm], [oj,   grp]],
        [[cofi, ho], [cofi, fe], [cofi, fi], [cofi, ga], [cofi, ta], [cofi, oj], [cofi, cofi], [cofi, coga], [cofi, grm], [cofi, grp]],
        [[coga, ho], [coga, fe], [coga, fi], [coga, ga], [coga, ta], [coga, oj], [coga, cofi], [coga, coga], [coga, grm], [coga, grp]],
        [[grm,  ho], [grm,  fe], [grm,  fi], [grm,  ga], [grm,  ta], [grm,  oj], [grm,  cofi], [grm,  coga], [grm,  grm], [grm,  grp]],
        [[grp,  ho], [grp,  fe], [grp,  fi], [grp,  ga], [grp,  ta], [grp,  oj], [grp,  cofi], [grp,  coga], [grp,  grm], [grp,  grp]],
      ], [
        [[ct, ct], [ct, ch], [ct, oi], [ct, gr], [ct, wo], [ct, ou], [ct, pr], [ct, po]],
        [[ch, ct], [ch, ch], [ch, oi], [ch, gr], [ch, wo], [ch, ou], [ch, pr], [ch, po]],
        [[oi, ct], [oi, ch], [oi, oi], [pi, gr], [oi, wo], [oi, ou], [oi, pr], [oi, po]],
        [[gr, ct], [gr, ch], [gr, oi], [gr, gr], [gr, wo], [gr, ou], [gr, pr], [gr, po]],
      ], [
        [[m, m], [m, c], [m, e]],
        [[c, m], [c, c], [c, e]],
        [[e, m], [e, c], [e, e]],
      ], [
        [[oju, oju], [oju, neo]],
        [[neo, oju], [neo, neo]],
      ]

      #sanity_window  = [0, 1]
      context_window = [0, 1, 2, 3]

      #cur_san        = sanity_window.sample
      cur_con        = context_window.sample

      if    cur_con == 0
        row_options    = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
        col_options    = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
        arr_options    = [0, 1]

        #cur_con = context_window.sample
        cur_row =    row_options.sample
        cur_col =    col_options.sample
        cur_arr =    arr_options.sample

        @chosen_noun = nouns[cur_con][cur_row][cur_col][cur_arr]
      elsif cur_con == 1
        row_options    = [0, 1, 2, 3]
        col_options    = [0, 1, 2, 3]
        arr_options    = [0, 1]

        #cur_con = context_window.sample
        cur_row =    row_options.sample
        cur_col =    col_options.sample
        cur_arr =    arr_options.sample

        @chosen_noun = nouns[cur_con][cur_row][cur_col][cur_arr]
      elsif cur_con == 2
        row_options    = [0, 1, 2]
        col_options    = [0, 1, 2]
        arr_options    = [0, 1]

        #cur_con = context_window.sample
        cur_row =    row_options.sample
        cur_col =    col_options.sample
        cur_arr =    arr_options.sample

        @chosen_noun = nouns[cur_con][cur_row][cur_col][cur_arr]
      elsif cur_con == 3
        row_options    = [0, 1]
        col_options    = [0, 1]
        arr_options    = [0, 1]

        #cur_con = context_window.sample
        cur_row =    row_options.sample
        cur_col =    col_options.sample
        cur_arr =    arr_options.sample

        @chosen_noun = nouns[cur_con][cur_row][cur_col][cur_arr]
      end
    end

    def self.adjective
      #              tsin  petite  sucré  roudy  l'éducation  sages
      t  = "tsin"    # t,t   t,p     t,s    t,r    t,l          t,s
      p  = "petite"
      s1 = "sucré"
      r  = "roudy"
      l  = "l'éducation"
      s2 = "sages"

      adjectives = [
        [[t,  t], [t,  p], [t,  s1], [t,  r], [t,  l], [t,  s2]],
        [[p,  t], [p,  p], [p,  s1], [p,  r], [p,  l], [p,  s2]],
        [[s1, t], [s1, p], [s1, s1], [s1, r], [s1, l], [s1, s2]],
        [[r,  t], [r,  p], [r,  s1], [r,  r], [r,  l], [r,  s2]],
        [[l,  t], [l,  p], [l,  s1], [l,  r], [l,  l], [l,  s2]],
        [[s2, t], [s2, p], [s2, s1], [s2, r], [s2, l], [s2, s2]],
      ], [
        [[p,  t], [p,  p], [p,  s1], [p,  r], [p,  l], [p,  s2]],
        [[s1, t], [s1, p], [s1, s1], [s1, r], [s1, l], [s1, s2]],
        [[r,  t], [r,  p], [r,  s1], [r,  r], [r,  l], [r,  s2]],
        [[l,  t], [l,  p], [l,  s1], [l,  r], [l,  l], [l,  s2]],
        [[s2, t], [s2, p], [s2, s1], [s2, r], [s2, l], [s2, s2]],
        [[t,  t], [t,  p], [t,  s1], [t,  r], [t,  l], [t,  s2]],
      ], [
        [[s1, t], [s1, p], [s1, s1], [s1, r], [s1, l], [s1, s2]],
        [[r,  t], [r,  p], [r,  s1], [r,  r], [r,  l], [r,  s2]],
        [[l,  t], [l,  p], [l,  s1], [l,  r], [l,  l], [l,  s2]],
        [[s2, t], [s2, p], [s2, s1], [s2, r], [s2, l], [s2, s2]],
        [[t,  t], [t,  p], [t,  s1], [t,  r], [t,  l], [t,  s2]],
        [[p,  t], [p,  p], [p,  s1], [p,  r], [p,  l], [p,  s2]],
      ], [
        [[r,  t], [r,  p], [r,  s1], [r,  r], [r,  l], [r,  s2]],
        [[l,  t], [l,  p], [l,  s1], [l,  r], [l,  l], [l,  s2]],
        [[s2, t], [s2, p], [s2, s1], [s2, r], [s2, l], [s2, s2]],
        [[t,  t], [t,  p], [t,  s1], [t,  r], [t,  l], [t,  s2]],
        [[p,  t], [p,  p], [p,  s1], [p,  r], [p,  l], [p,  s2]],
        [[s1, t], [s1, p], [s1, s1], [s1, r], [s1, l], [s1, s2]],
      ], [
        [[l,  t], [l,  p], [l,  s1], [l,  r], [l,  l], [l,  s2]],
        [[s2, t], [s2, p], [s2, s1], [s2, r], [s2, l], [s2, s2]],
        [[t,  t], [t,  p], [t,  s1], [t,  r], [t,  l], [t,  s2]],
        [[p,  t], [p,  p], [p,  s1], [p,  r], [p,  l], [p,  s2]],
        [[s1, t], [s1, p], [s1, s1], [s1, r], [s1, l], [s1, s2]],
        [[r,  t], [r,  p], [r,  s1], [r,  r], [r,  l], [r,  s2]],
      ], [
        [[s2, t], [s2, p], [s2, s1], [s2, r], [s2, l], [s2, s2]],
        [[t,  t], [t,  p], [t,  s1], [t,  r], [t,  l], [t,  s2]],
        [[p,  t], [p,  p], [p,  s1], [p,  r], [p,  l], [p,  s2]],
        [[s1, t], [s1, p], [s1, s1], [s1, r], [s1, l], [s1, s2]],
        [[r,  t], [r,  p], [r,  s1], [r,  r], [r,  l], [r,  s2]],
        [[l,  t], [l,  p], [l,  s1], [l,  r], [l,  l], [l,  s2]],
      ]

      context_window = [0, 1, 2, 3, 4, 5]

      row_options    = [0, 1, 2, 3, 4, 5]
      col_options    = [0, 1, 2, 3, 4, 5]
      arr_options    = [0, 1]

      cur_con = context_window.sample
      cur_row =    row_options.sample
      cur_col =    col_options.sample
      cur_arr =    arr_options.sample

      @chosen_adjective = adjectives[cur_con][cur_row][cur_col][cur_arr]
    end

    def self.subject
      subjects = [[
        [["es",    "es"], ["es",    "es ne"]],
        [["es ne", "es"], ["es ne", "es ne"]],
      ], [
        [["es",    "es"], ["es",    "es ne"]],
        [["es ne", "es"], ["es ne", "es ne"]],
      ]]

      context_window = [0, 1]

      row_options    = [0, 1]
      col_options    = [0, 1]
      arr_options    = [0, 1]

      cur_con = context_window.sample
      cur_row =    row_options.sample
      cur_col =    col_options.sample
      cur_arr =    arr_options.sample

      @chosen_subject = subjects[cur_con][cur_row][cur_col][cur_arr]
    end

    def self.verb
      avo = "avoir"
      cou = "coupe"
      ser = "serrure"
      dev = "déverrouillage"

      verbs = [
        [[avo, avo], [avo, cou], [avo, ser], [avo, dev]],
        [[cou, avo], [cou, cou], [cou, ser], [cou, dev]],
        [[ser, avo], [ser, cou], [ser, ser], [ser, dev]],
        [[dev, avo], [dev, cou], [dev, ser], [dev, dev]],
      ], [
        [[cou, avo], [cou, cou], [cou, ser], [cou, dev]],
        [[ser, avo], [ser, cou], [ser, ser], [ser, dev]],
        [[dev, avo], [dev, cou], [dev, ser], [dev, dev]],
        [[avo, avo], [avo, cou], [avo, ser], [avo, dev]],
      ], [
        [[ser, avo], [ser, cou], [ser, ser], [ser, dev]],
        [[dev, avo], [dev, cou], [dev, ser], [dev, dev]],
        [[avo, avo], [avo, cou], [avo, ser], [avo, dev]],
        [[cou, avo], [cou, cou], [cou, ser], [cou, dev]],
      ], [
        [[dev, avo], [dev, cou], [dev, ser], [dev, dev]],
        [[avo, avo], [avo, cou], [avo, ser], [avo, dev]],
        [[cou, avo], [cou, cou], [cou, ser], [cou, dev]],
        [[ser, avo], [ser, cou], [ser, ser], [ser, dev]],
      ]

      context_window = [0, 1, 2, 3]
      row_options    = [0, 1, 2, 3]
      col_options    = [0, 1, 2, 3]
      arr_options    = [0, 1]

      cur_con = context_window.sample
      cur_row =    row_options.sample
      cur_col =    col_options.sample
      cur_arr =    arr_options.sample

      @chosen_verb = verbs[cur_con][cur_row][cur_col][cur_arr]
    end

    def self.adverb
      #                   rapidement  lentement  assurement  tranquillement
      r = "rapidement"    #  r,r         r,l        r,a         r,t
      l = "lentement"
      a = "assurement"
      t = "tranquillement"

      adverbs = [
        [[r, r], [r, l], [r, a], [r, t]],
        [[l, r], [l, l], [l, a], [l, t]],
        [[a, r], [a, l], [a, a], [a, t]],
        [[t, r], [t, l], [t, a], [t, t]],
      ], [
        [[l, r], [l, l], [l, a], [l, t]],
        [[a, r], [a, l], [a, a], [a, t]],
        [[t, r], [t, l], [t, a], [t, t]],
        [[r, r], [r, l], [r, a], [r, t]],
      ], [
        [[a, r], [a, l], [a, a], [a, t]],
        [[t, r], [t, l], [t, a], [t, t]],
        [[r, r], [r, l], [r, a], [r, t]],
        [[l, r], [l, l], [l, a], [l, t]],
      ], [
        [[t, r], [t, l], [t, a], [t, t]],
        [[r, r], [r, l], [r, a], [r, t]],
        [[l, r], [l, l], [l, a], [l, t]],
        [[a, r], [a, l], [a, a], [a, t]],
      ]

      context_window = [0, 1, 2, 3]
      row_options    = [0, 1, 2, 3]
      col_options    = [0, 1, 2, 3]
      arr_options    = [0, 1]

      cur_con = context_window.sample
      cur_row =    row_options.sample
      cur_col =    col_options.sample
      cur_arr =    arr_options.sample

      @chosen_adverb = adverbs[cur_con][cur_row][cur_col][cur_arr]
    end

    def self.create_dialogue_input
      EmergentSemanticDialogueFramework::SelfReinforcer.word_class
      EmergentSemanticDialogueFramework::SelfReinforcer.noun
      EmergentSemanticDialogueFramework::SelfReinforcer.adjective
      EmergentSemanticDialogueFramework::SelfReinforcer.subject
      EmergentSemanticDialogueFramework::SelfReinforcer.verb
      EmergentSemanticDialogueFramework::SelfReinforcer.adverb

      new_line = "#{@chosen_word_class} #{@chosen_noun} #{@chosen_adjective} #{@chosen_subject} #{@chosen_verb} #{@chosen_adverb}."

      File.open("lib/npc/possible_lines.txt", "a") { |f|
        f.puts new_line
      }

      puts "Created input for possible lines..."
    end

    def self.self_reinforcer
      #     1    2    4    8    7    5
      # 1 1,1  1,2  1,4  1,8  1,7  1,5
      # 2 2,1  2,2  2,4  2,8  2,7  2,5
      # 4 4,1  4,2  4,4  4,8  4,7  4,5
      # 8 8,1  8,2  8,4  8,8  8,7  8,5
      # 7 7,1  7,2  7,4  7,8  7,7  7,5
      # 5 5,1  5,2  5,4  5,8  5,7  5,5

      #      3    6    9
      # 3  3,3  3,6  3,9
      # 6  6,3  6,6  6,9
      # 9  9,3  9,6  9,9

      vortex = [ 1, 2, 4, 8, 7, 5 ]
      charge = [ 3, 6, 9 ]

      nested_vortex = [
        [[1, 1], [1, 2], [1, 4], [1, 8], [1, 7], [1, 5]],
        [[2, 1], [2, 2], [2, 4], [2, 8], [2, 7], [2, 5]],
        [[4, 1], [4, 2], [4, 4], [4, 8], [4, 7], [4, 5]],
        [[8, 1], [8, 2], [8, 4], [8, 8], [8, 7], [8, 5]],
        [[7, 1], [7, 2], [7, 4], [7, 8], [7, 7], [7, 5]],
        [[5, 1], [5, 2], [5, 4], [5, 8], [5, 7], [5, 5]],
      ]

      nested_charge = [
        [[3, 3], [3, 6], [3, 9]],
        [[6, 3], [6, 6], [6, 9]],
        [[9, 3], [9, 6], [9, 9]],
      ]

      ## Choosing the first index value for vortex based loop.
      row_options_vortex = [0, 1, 2, 3, 4, 5]
      col_options_vortex = [0, 1, 2, 3, 4, 5]
      arr_options_vortex = [0, 1]

      v_cur_row = row_options_vortex.sample
      v_cur_col = col_options_vortex.sample
      v_cur_arr = arr_options_vortex.sample

      ## Choosing the first index value for charge based loop.
      row_options_charge = [0, 1, 2]
      col_options_charge = [0, 1, 2]
      arr_options_charge = [0, 1]

      c_cur_row = row_options_charge.sample
      c_cur_col = col_options_charge.sample
      c_cur_arr = arr_options_charge.sample

      chosen_vortex_value = nested_vortex[v_cur_row][v_cur_col][v_cur_arr]
      chosen_charge_value = nested_charge[c_cur_row][c_cur_col][c_cur_arr]

      ## Vortex Loop
      chosen_vortex_value.times do 
        possible_lines = File.readlines("lib/npc/possible_lines.txt")
        size_limit     = possible_lines.size.to_i
        index          = 0 

        ideal_line = possible_lines[chosen_vortex_value].to_s

        size_limit.times do
          current_line = possible_lines[index].to_s

          if current_line == ideal_line
            File.open("lib/npc/learned_lines.txt", "a") { |f|
              f.puts current_line
            }
          else
            #puts "> Current line did not match the ideal dialogue line..."
          end

          index = index + 1
        end
      end

      ## Charge Loop
      chosen_charge_value.times do
        learned_lines  = File.readlines("lib/npc/learned_lines.txt")
        size_limit     = learned_lines.size.to_i
        index          = 0 

        ideal_line = learned_lines[chosen_vortex_value].to_s

        size_limit.times do
          current_line = learned_lines[index].to_s

          if current_line == ideal_line
            File.open("lib/npc/reinforced_lines.txt", "a") { |f|
              f.puts current_line
            }
          else
            #puts "> Current line is not reinforced into longterm memory..."
          end

          index = index + 1
        end
      end

    end
  end

  class OrateDialouge
    def self.speak
      dialogue = File.readlines("lib/npc/reinforced_lines.txt").shuffle
      index    = File.read("lib/npc/dialogue_index.txt").to_i

      print "> "
      puts dialogue[index]

      File.open("lib/npc/dialogue_index.txt", "w") { |f|
        index = index + 1

        f.puts index
      }
    end
  end
end
