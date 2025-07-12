module StealthAhuzacos
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
end
