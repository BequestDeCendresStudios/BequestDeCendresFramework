module BequestNPCNames

  class NameGenerator
    ## System Nodes
    def self.create_name
      #                   Homard Au Cochon Tesutosujettos Ursinehomme
      # Homard Au Cochon  Ho,Ho            Ho,Hu            Ho,We
      # Tesutosujettos
      # Ursinehomme
  
      possible_enemies = [
        [["Homard Au Cochon", "Homard Au Cochon"], ["Homard Au Cochon", "Tesutosujettos"], ["Homard Au Cochon", "Ursinehomme"]],
        [["Tesutosujettos",   "Homard Au Cochon"], ["Tesutosujettos",   "Tesutosujettos"], ["Tesutosujettos",   "Ursinehomme"]],
        [["Usinehomme",       "Homard Au Cochon"], ["Ursinehomme",      "Tesutosujettos"], ["Ursinehomme",      "Ursinehomme"]],
      ]

      pe_row_options = [0, 1, 2]
      pe_col_options = [0, 1, 2]
      pe_arr_options = [0, 1]

      pe_cur_row = pe_row_options.sample
      pe_cur_col = pe_col_options.sample
      pe_cur_arr = pe_arr_options.sample

      enemy_type = possible_enemies[pe_cur_row][pe_cur_col][pe_cur_arr]

      #                              Le Flotteur   Ana Denki   Les tempêtes de poussières   Anos Dokubutsos   Anos oshokos   Le void
      # Le Flotteur                   Ea, Ea       Ea, De      Ea, Ka                       Ea, Tsu           Ea, Ten        Ea,  Shi Air
      # Ana Denki                     De, Ea       De, De      De, Ka                       De, Tsu           De, Ten        De,  Shi Electricity
      # Les tempêtes de poussières    Ka, Ea       Ka, De      Ka, Ka                       Ka, Tsu           Ka, Teb        Ka,  Shi Aether
      # Anos Dokubutsos              Tsu, Ea      Tsu, De     Tsu, Ka                       Tsu, Tsu          Tsu, Ten       Tsu, Shi Heaven
      # Anos oshokos                 Ten, Ea      Ten, De     Ten, Ka                       Ten, Tsu          Ten, Ten       Ten, Shi Earth
      # Le void                      Shi, Ea      Shi, De     Shi, Ka                       Shi, Tsu          Shi, Ten       Shi, Shi Death
  
  
        # エア Ea
      # 地球 
      # 風
      # 水
      # 火 - 火
      # 死亡事故
      # 光

      possible_elements = [ 
        [["Le Flotteur",                "Le Flotteur"], ["Le Flotteur",                  "La noyee"], ["Le Flotteur",                 "Les tempêtes de poussières"], ["Le Flotteur",                 "Anos Dokubutsos"], ["Le Flotteur",                 "Anos oshokos"], ["Le Flotteur",                 "Le void"],  ["Le Flotteur",                "le Habu"]],
        [["La noyee",                   "Le Flotteur"], ["Anos Danki",                   "La noyee"], ["Anos Danki",                  "Les tempêtes de poussières"], ["La noyee",                    "Anos Dokubutsos"], ["La noyee",                    "Anos oshokos"], ["La noyee",                    "Le void"],  ["Le noyee",                   "le Habu"]],
        [["Les tempêtes de poussières", "Le Flotteur"], ["Les tempêtes de poussières",   "La noyee"], ["Les tempêtes de poussières",  "Les tempêtes de poussières"], ["Les tempêtes de poussières",  "Anos Dokubutsos"], ["Les tempêtes de poussières",  "Anos oshokos"], ["Les tempêtes de poussières",  "Le void"],  ["Lea tempetes de poussieres", "le Habu"]],
        [["Anos Dokubutsos",            "Le Flotteur"], ["Anos Dokubutsos",              "La noyee"], ["Anos Dokubutsos",             "Les tempêtes de poussières"], ["Anos Dokubutsos",             "Anos Dokubutsos"], ["Anos Dokubutsos",             "Anos oshokos"], ["Anos Dokubutsos",             "Le void"],  ["Anos Dokubutsos",            "le Habu"]],
        [["Anos oshokos",               "Le Flotteur"], ["Anos oshokos",                 "La noyee"], ["Anos oshokos",                "Les tempêtes de poussières"], ["Anos oshokos",                "Anos Dokubutsos"], ["Anos oshokos",                "Anos oshokos"], ["Anos oshokos",                "Le void"],  ["Anos oshokos",               "le Habu"]],
        [["Le void",                    "Le Flotteur"], ["Le void",                      "La noyee"], ["Anos Shi",                    "Les tempêtes de poussières"], ["Anos Shi",                    "Anos Dokubutsos"], ["Le void",                     "Anos oshokos"], ["Le void",                     "Le void"],  ["Le Void",                    "le Haby"]],
      ]

      pel_row_options = [0, 1, 2, 3, 4, 5]
      pel_col_options = [0, 1, 2, 3, 4, 5]
      pel_arr_options = [0, 1]

      pel_cur_row = pel_row_options.sample
      pel_cur_col = pel_col_options.sample
      pel_cur_arr = pel_arr_options.sample

      element_type = possible_elements[pel_cur_row][pel_cur_col][pel_cur_arr]

      #                    de les corrompue  de le recupere  de le soufflé  de le carbonise  de la noyee  de le noye  de le fissure  de les abandonnés
      # de les corrompue   c,c               c,r             c,s            
      # de le recupere
      # de le soufflé
      # de le carbonise
      # de la noyee
      # de le noye
      # de le fissure
      # de les abandonnés

      classified_adverb = [
        [ ["de les corrompue",  "de les corrompue"], ["de les corrompue",  "de le recupere"], ["de les corrompue",  "de le souffle"], ["de les corrompue",  "de le carbonise"], ["de les corrompue",  "de la noyee"], ["de les corrompue",  "de le noye"], ["de les corrompue",  "de le fissure"], ["de les corrompue",  "de les abandonnes"] ],
        [ ["de le recupere",    "de les corrompue"], ["de le recupere",    "de le recupere"], ["de le recupere",    "de le souffle"], ["de le recupere",    "de le carbonise"], ["de le recupere",    "de la noyee"], ["de le recupere",    "de le noye"], ["de le recupere",    "de le fissure"], ["de le recupere",    "de les abandonnes"] ],
        [ ["de le soufflé",     "de les corrompue"], ["de le soufflé",     "de le recupere"], ["de le soufflé",     "de le souffle"], ["de le soufflé",     "de le carbonise"], ["de le soufflé",     "de la noyee"], ["de le soufflé",     "de le noye"], ["de le soufflé",     "de le fissure"], ["de le soufflé",     "de les abandonnes"] ],
        [ ["de le carbonise",   "de les corrompue"], ["de le carbonise",   "de le recupere"], ["de le carbonise",   "de le souffle"], ["de le carbonise",   "de le carbonise"], ["de le carbonise",   "de la noyee"], ["de le carbonise",   "de le noye"], ["de le carbonise",   "de le fissure"], ["de le carbonise",   "de les abandonnes"] ],
        [ ["de la noyee",       "de les corrompue"], ["de la noyee",       "de le recupere"], ["de la noyee",       "de le souffle"], ["de la noyee",       "de le carbonise"], ["de la noyee",       "de la noyee"], ["de la noyee",       "de le noye"], ["de la noyee",       "de le fissure"], ["de la noyee",       "de les abandonnes"] ],
        [ ["de le noye",        "de les corrompue"], ["de le noye",        "de le recupere"], ["de le noye",        "de le souffle"], ["de le noye",        "de le carbonise"], ["de le noye",        "de la noyee"], ["de le noyee",       "de le noye"], ["de le noye",        "de le fissure"], ["de le noye",        "de les abandonnes"] ],
        [ ["de le fissure",     "de les corrompue"], ["de le fissure",     "de le recupere"], ["de le fissure",     "de le souffle"], ["de le fissure",     "de le carbonise"], ["de le fissure",     "de la noyee"], ["de le fissure",     "de le noye"], ["de le fissure",     "de le fissure"], ["de le fissure",     "de les abandonnes"] ],
        [ ["de les abandonnes", "de les corrompue"], ["de les abandonnes", "de le recupere"], ["de les abandonnes", "de le souffle"], ["de les abandonnes", "de le carbonise"], ["de les abandonnes", "de la noyee"], ["de les abandonnes", "de le noye"], ["de les abandonnes", "de le fissure"], ["de les abandonnes", "de les abandonnes"] ]
      ]

      ca_row_options = [0, 1, 2, 3, 4, 5, 6, 7]
      ca_col_options = [0, 1, 2, 3, 4, 5, 6, 7]
      ca_arr_options = [0, 1]

      ca_cur_row = ca_row_options.sample
      ca_cur_col = ca_col_options.sample
      ca_cur_arr = ca_arr_options.sample

      adverb_type = classified_adverb[ca_cur_row][ca_cur_col][ca_cur_arr]

      generated_enemy = "#{element_type} #{enemy_type} #{adverb_type}"

      puts "#{generated_enemy}"
    end
  end
end
