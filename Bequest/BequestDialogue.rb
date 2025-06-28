module BequestDialogue
  class EachWord
    def self.standard_francophonic
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

      @current_word_class = word_classes[cur_con][cur_row][cur_col][cur_arr]
      #print current_word_class; print " "

      ho   = "homme"
      fe   = "femme"
      fi   = "fille"
      ga   = "garcon"
      ta   = "tante"
      oj   = "oncle"
      cofi = "cousinfille"
      coga = "cousingarcon"
      grm  = "grandmere"
      grp  = "grandpere"

      ct   = "chat"
      ch   = "chien"
      oi   = "oiseau"
      gr   = "souris"
      ou   = "ours"
      wo   = "orgueil"
      pr   = "ostritch"
      po   = "jiraff"
      pi   = "écureuil"

      m    = "maison"
      c    = "cabin"
      e    = "ecole"

      oju  = "ojijaku"
      neo  = "ne ojijaku"

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

      context_window = [0, 1, 2, 3]
      cur_con        = context_window.sample

      if    cur_con == 0
        row_options    = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
        col_options    = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
        arr_options    = [0, 1]

        #cur_con = context_window.sample
        cur_row =    row_options.sample
        cur_col =    col_options.sample
        cur_arr =    arr_options.sample

        @current_noun = nouns[cur_con][cur_row][cur_col][cur_arr]
        #print current_noun; print " "

      elsif cur_con == 1
        row_options    = [0, 1, 2, 3]
        col_options    = [0, 1, 2, 3]
        arr_options    = [0, 1]

        #cur_con = context_window.sample
        cur_row =    row_options.sample
        cur_col =    col_options.sample
        cur_arr =    arr_options.sample

        @current_noun = nouns[cur_con][cur_row][cur_col][cur_arr]
        #print current_noun; print " "

      elsif cur_con == 2
        row_options    = [0, 1, 2]
        col_options    = [0, 1, 2]
        arr_options    = [0, 1]

        #cur_con = context_window.sample
        cur_row =    row_options.sample
        cur_col =    col_options.sample
        cur_arr =    arr_options.sample

        @current_noun = nouns[cur_con][cur_row][cur_col][cur_arr]
        #print current_noun; print " "

      elsif cur_con == 3
        row_options    = [0, 1]
        col_options    = [0, 1]
        arr_options    = [0, 1]

        #cur_con = context_window.sample
        cur_row =    row_options.sample
        cur_col =    col_options.sample
        cur_arr =    arr_options.sample

        @current_noun = nouns[cur_con][cur_row][cur_col][cur_arr]
        #print current_noun; print " "

      end

      subjects = [
        [["es",    "es"], ["es",    "es ne"]],
        [["es ne", "es"], ["es ne", "es ne"]],
      ], [
        [["es",    "es"], ["es",    "es ne"]],
        [["es ne", "es"], ["es ne", "es ne"]],
      ]

      context_window = [0, 1]

      row_options    = [0, 1]
      col_options    = [0, 1]
      arr_options    = [0, 1]

      cur_con = context_window.sample
      cur_row =    row_options.sample
      cur_col =    col_options.sample
      cur_arr =    arr_options.sample

      @current_subject = subjects[cur_con][cur_row][cur_col][cur_arr]
      #print current_subject; print " "

      avo = "avoir"
      cou = "coupe"
      ser = "serrure"
      dev = "déverrouillage"

      verbs = [[
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
      ]]

      context_window = [0, 1, 2, 3]
      row_options    = [0, 1, 2, 3]
      col_options    = [0, 1, 2, 3]
      arr_options    = [0, 1]

      cur_con = context_window.sample
      cur_row =    row_options.sample
      cur_col =    col_options.sample
      cur_arr =    arr_options.sample

      current_verb = verbs[cur_con][cur_row][cur_col][cur_arr]

      #print current_verb; print "."

      @phrase = "#{current_word_class} #{current_noun} #{current_subject} #{current_verb},"
    end

      def self.grammar_one
      @grammar_one = {
        word_class: "@current_word_class",
        noun:       "@current_noun",
        adjective:  "@current_adjective",
        subject:    "@current_subject",
        verb:       "@current_verb",
        adverb:     "@current_adverb",
      }
    end

    def self.grammar_two
      @grammar_two = {
        word_class: "@current_word_class",
        noun:       "@current_noun",
        adjective:  "@current_adjective",
        subject:    "@current_subject",
        verb:       "@current_verb",
        adverb:     "@current_adverb",
      }
    end

    def self.grammar_three
      @grammar_three = {
        word_class: "@current_word_class",
        noun:       "@current_noun",
        adjective:  "@current_adjective",
        subject:    "@current_subject",
        verb:       "@current_verb",
        adverb:     "@current_adverb",
      }
    end

    # Map grammars into a graph
    def self.map_grammars
      my_grammars = [
        [[@grammar_one,   @grammar_one], [@grammar_one,   @grammar_two], [@grammar_one,   @grammar_three]],
        [[@grammar_two,   @grammar_one], [@grammar_two,   @grammar_two], [@grammar_two,   @grammar_three]],
        [[@grammar_three, @grammar_one], [@grammar_three, @grammar_two], [@grammar_three, @grammar_three]],
      ]

      # Randomly select a grammar
      row_options = [0, 1, 2]
      col_options = [0, 1, 2]
      arr_options = [0, 1]

      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      current_grammar = my_grammars[cur_row][cur_col][cur_arr]

      # Print the grammar (for debugging)
      current_grammar.each do |key, value|
        puts "  #{key}: #{value}"
      end
    end

    def self.standard_autocorrect
      autocorrect = {
        "Ana homme es ne coupe."             =>              "Le homme es ne coupe ",
        "Ana chien es ne deverrouillage."    =>     "Le chien es ne deverrouillage ",
        "La maison es deverrouillage."       =>       "Le maison es deverrouillage ",
        "La oncle es ne serrure."            =>            "La oncle es ne serrure ",
        "Anos cabin es ne avoir."            =>              "Le cabin es ne avoir ",
        "Anu ecole es ne serrure."           =>             "L'ecole es ne serrure ",
        "Anu chat es ne serrure."            =>             "Le chat es ne serrure ",
        "Ana ecole es avoir."                =>                  "L'ecole es avoir ",
        "Lana ne ojijaku es déverrouillage." => "Lanu na ojijaku es déverrouillage ",
        "Ana ne ojijaku es serrure."         =>         "Anu ne ojijaku es serrure ",
        "Les souris es ne serrure."          =>          "Les souris es ne serrure ",
        "Ana grandpere es avoir."            =>             "Le grandpere es avoir ",
      }

      autocorrected = autocorrect[@phrase]

      print ">> #{autocorrected}"

      if autocorrected == "Le homme es ne coupe "
        object = [
          "un poulet", "un beouf", "un porc"
        ]

        puts object.sample
      elsif autocorrected ==     "Le chien es ne deverrouillage "; puts        "a le porte de entre."
      elsif autocorrected ==       "Le maison es deverrouillage "; puts               "par resident."
      elsif autocorrected ==            "La oncle es ne serrure "; puts        "a le porte de entre."
      elsif autocorrected ==              "Le cabin es ne avoir "; puts          "un tomber de nuit."
      elsif autocorrected ==             "L'ecole es ne serrure "; puts        "a le porte de entre."
      elsif autocorrected ==             "Le chat es ne serrure "; puts        "a le porte de entre."
      elsif autocorrected ==                  "L'ecole es avoir "; puts "un terrible monts de monte."
      elsif autocorrected == "Lanu na ojijaku es déverrouillage "; puts        "a le porte de entre."
      elsif autocorrected ==         "Anu ne ojijaku es serrure "; puts        "a le porte de entre."
      elsif autocorrected ==          "Les souris es ne serrure "; puts        "a le porte de entre."
      elsif autocorrected ==             "Le grandpere es avoir "; puts          "un livre de lisen."
      else
        puts " ... "
      end
    end
  end
end
