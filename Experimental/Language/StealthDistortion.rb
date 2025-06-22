module StealthLanguage
  class LanguageDistortion
    def self.word_class_distortion
      # Word classes from other language inherit the French tendency to make some consonants silent.

      # Francophone Word Classes
      le    =  "Le"
      la    =  "La"
      les   = "Les"
      un    =  "un"
      une   = "une"
      des   = "des"

      fr_classes = [
        [[le,  le], [le,  la], [le,  les], [le,  un], [le,  une], [le,  des]],
        [[la,  le], [la,  la], [la,  les], [la,  un], [la,  une], [la,  des]],
        [[les, le], [les, la], [les, les], [les, un], [les, une], [les, des]],
        [[un,  le], [un,  la], [un,  les], [un,  un], [un,  une], [un,  des]],
        [[une, le], [une, la], [une, les], [une, un], [une, une], [une, des]],
        [[des, le], [des, la], [des, les], [des, un], [des, une], [des, des]],
      ]

      fr_row_options = [0, 1, 2, 3, 4, 5]
      fr_col_options = [0, 1, 2, 3, 4, 5]
      fr_arr_options = [0, 1]

      fr_cur_row = fr_row_options.sample
      fr_cur_col = fr_col_options.sample
      fr_cur_arr = fr_arr_options.sample

      @current_francais = fr_classes[fr_cur_row][fr_cur_col][fr_cur_arr]

      File,open("lib/encyclopedia/language/francais/word_classes.txt", "a") { |f|
        f.puts @current_francais
      }

      # Pseudo Word Classes For Loan Words From Nihongo
      anu   =  "Anu"
      ana   =  "Ana"
      anos  = "Anos"
      te    =   "te"
      tu    =   "tu"
      tos   =  "tos"

      jp_classes = [
        [[anu,  anu], [anu,  ana], [anu,  anos], [anu,  te], [anu,  tu], [anu,  tos]],
        [[ana,  anu], [ana,  ana], [ana,  anos], [ana,  te], [ana,  tu], [ana,  tos]],
        [[anos, anu], [anos, ana], [anos, anos], [anos, te], [anos, tu], [anos, tos]],
        [[te,   anu], [te,   ana], [te,   anos], [te,   te], [te,   tu], [te,   tos]],
        [[ta,   anu], [ta,   ana], [ta,   anos], [ta,   te], [ta,   tu], [ta,   tos]],
        [[tos,  anu], [tos,  ana], [tos,  anos], [tos,  te], [tos,  tu], [tos,  tos]],
      ]

      jp_row_options = [0, 1, 2, 3, 4, 5]
      jp_col_options = [0, 1, 2, 3, 4, 5]
      jp_arr_options = [0, 1]

      jp_cur_row = fr_row_options.sample
      jp_cur_col = fr_col_options.sample
      jp_cur_arr = fr_arr_options.sample

      @current_nihongo = jp_classes[jp_cur_row][jp_cur_col][jp_cur_arr]

      File,open("lib/encyclopedia/language/nihongo/word_classes.txt", "a") { |f|
        f.puts @current_nihongo
      }

      # Genres De Mots Pour Allamain
      der   = "Der"
      die   = "Die"
      das   = "Das"
      a     =   "A"
      ein   = "Ein"

      gm_classes = [
        [[der, der], [der, die], [der, das], [der, a], [der, ein]],
        [[die, der], [die, die], [die, das], [die, a], [die, ein]],
        [[das, der], [das, die], [das, das], [das, a], [das, ein]],
        [[a,   der], [a,   die], [a,   das], [a,   a], [a,   ein]],
        [[die, der], [die, die], [die, das], [die, a], [die, ein]],
      ]

      gm_row_options = [0, 1, 2, 3, 4]
      gm_col_options = [0, 1, 2, 3, 4]
      gm_arr_options = [0, 1]

      gm_cur_row = gm_row_options.sample
      gm_cur_col = gm_col_options.sample
      gm_cur_arr = gm_arr_options.sample

      @current_german = gm_classes[gm_cur_row][gm_cur_col][gm_cur_arr]

      File,open("lib/encyclopedia/language/allemane/word_classes.txt", "a") { |f|
        f.puts @current_german
      }

      # Hybrid Word Classes For Compound Words
      lanu  =  "Lanu"
      lana  =  "Lana"
      lanos = "Lanos"
      tun   =   "tun"
      tan   =   "tan"
      deso  =  "deso"

      hy_classes = [
        [[lanu,  lanu], [lanu,  lana], [lanu,  lanos], [lanu,  tun], [lanu,  tan], [lanu,  deso]],
        [[lana,  lanu], [lana,  lana], [lana,  lanos], [lana,  tun], [lana,  tan], [lana,  deso]],
        [[lanos, lanu], [lanos, lana], [lanos, lanos], [lanos, tun], [lanos, tan], [lanos, deso]],
        [[tun,   lanu], [tun,   lana], [tun,   lanos], [tun,   tun], [tun,   tan], [tun,   deso]],
        [[tan,   lanu], [tan,   lana], [tan,   lanos], [tan,   tun], [tan,   tan], [tan,   deso]],
        [[deso,  lanu], [deso,  lana], [deso,  lanos], [deso,  tun], [deso,  tan], [deso,  deso]],
      ]

      hy_row_options = [0, 1, 2, 3, 4, 5]
      hy_col_options = [0, 1, 2, 3, 4, 5]
      hy_arr_options = [0, 1]

      hy_cur_row = hy_row_options.sample
      hy_cur_col = hy_col_options.sample
      hy_cur_arr = hy_arr_options.sample

      @current_hybrid = hy_classes[hy_cur_row][hy_cur_col][hy_cur_arr]

      File,open("lib/encyclopedia/language/hybrid/word_classes.txt", "a") { |f|
        f.puts @current_hybrid
      }

      word_classes = [
        @current_francais, @current_nihongo,
        @current_allemane, @current_hybrid,
      ]

      puts word_classes.sample
    end

    def self.noun_distortion
      pomme      = "pomme",     "ommepay"
      banane     = "banane",    "ananebay"
      komashika  = "komashika", "omashikakay"

      fruits = [
        [[pomme[0],     pomme[0]], [pomme[0],     banane[0]], [pomme[0],     komashika[0]]],
        [[banane[0],    pomme[0]], [banane[0],    banane[0]], [banane[0],    komashika[0]]],
        [[komashika[0], pomme[0]], [komashika[0], banane[0]], [komashika[0], komashika[0]]],
      ], [
        [[pomme[1],     pomme[1]], [pomme[1],     banane[1]], [pomme[1],     komashika[1]]],
        [[banane[1],    pomme[1]], [banane[1],    banane[1]], [banane[1],    komashika[1]]],
        [[komashika[1], pomme[1]], [komashika[1], banane[1]], [komashika[1], komashika[1]]],
      ]

      con_options = [0, 1]
      row_options = [0, 1, 2]
      col_options = [0, 1, 2]
      arr_options = [0, 1]

      cur_con = con_options.sample
      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      current_fruit = fruits[cur_con][cur_row][cur_col][cur_arr]

      print current_fruit

      if    current_fruit == "pomme"
        File.open("lib/encyclopedia/language/francais/nouns.txt", "a") { |f|
          f.puts current_fruit
        }
      elsif current_fruit == "banane"
        File.open("lib/encyclopedia/language/francais/nouns.txt", "a") { |f|
          f.puts current_fruit
        }
      elsif current_fruit == "komashika"
        File.open("lib/encyclopedia/language/nihongo/nihongo.txt", "w") { |f|
          f.puts current_fruit
        }
      if    current_fruit == "ommepay"
        File.open("lib/encyclopedia/language/francais/nouns.txt", "a") { |f|
          f.puts current_fruit
        }
      elsif current_fruit == "ananebay"
        File.open("lib/encyclopedia/language/francais/nouns.txt", "a") { |f|
          f.puts current_fruit
        }
      elsif current_fruit == "omashikakay"
        File.open("lib/encyclopedia/language/nihongo/nihongo.txt", "w") { |f|
          f.puts current_fruit
        }
      else
        File.open("lib/encyclopedia/language/unknown/nouns.txt", "a") { |f|
          f.puts current_fruit
        }
      end
    end

    def self.subject_distortion
      je    =    "Je",   "Ejay"
      vous  =  "Vous", "Ousvey"
      tu    =    "Tu",   "Utay"
      nous  =  "Nous", "Ousnay"
      il    =    "Il",   "Liay"
      ils   =   "Ils",  "Lsiay"
      elle  =  "Elle", "Lleyay"
      elles = "Elles", "LLesay"

      subjects = [
        [[je[0],    je[0]], [je[0],    vous[0]], [je[0],    tu[0]], [je[0],     nous[0]], [je[0],    il[0]], [je[0],    ils[0]], [je[0],    elle[0]], [je[0],    elles[0]]],
        [[vous[0],  je[0]], [vous[0],  vous[0]], [vous[0],  tu[0]], [vous[0],   nous[0]], [vous[0],  il[0]], [vous[0],  ils[0]], [vous[0],  elle[0]], [vous[0],  elles[0]]],
        [[tu[0],    je[0]], [tu[0],    vous[0]], [tu[0],    tu[0]], [tu[0],     nous[0]], [tu[0],    il[0]], [tu[0],    ils[0]], [tu[0],    elle[0]], [tu[0],    elles[0]]],
        [[nous[0],  je[0]], [nous[0],  vous[0]], [nous[0],  tu[0]], [nous[0],   nous[0]], [nous[0],  il[0]], [nous[0],  ils[0]], [nous[0],  elle[0]], [nous[0],  elles[0]]],
        [[il[0],    je[0]], [il[0],    vous[0]], [il[0],    tu[0]], [il[0],     nous[0]], [il[0],    il[0]], [il[0],    ils[0]], [il[0],    elle[0]], [il[0],    elles[0]]],
        [[ils[0],   je[0]], [ils[0],   vous[0]], [ils[0],   tu[0]], [ils[0],    nous[0]], [ils[0],   il[0]], [ils[0],   ils[0]], [ils[0],   elle[0]], [ils[0],   elles[0]]],
        [[elle[0],  je[0]], [elle[0],  vous[0]], [elle[0],  tu[0]], [elle[0],   nous[0]], [elle[0],  il[0]], [elle[0],  ils[0]], [elle[0],  elle[0]], [elle[0],  elles[0]]],
        [[elles[0], je[0]], [elles[0], vous[0]], [elles[0], tu[0]], [elles[0],  nous[0]], [elles[0], il[0]], [elles[0], ils[0]], [elles[0], elle[0]], [elles[0], elles[0]]],
      ], [
        [[je[1],    je[1]], [je[1],    vous[1]], [je[1],    tu[1]], [je[1],     nous[1]], [je[1],    il[1]], [je[1],    ils[1]], [je[1],    elle[1]], [je[1],    elles[1]]],
        [[vous[1],  je[1]], [vous[1],  vous[1]], [vous[1],  tu[1]], [vous[1],   nous[1]], [vous[1],  il[1]], [vous[1],  ils[1]], [vous[1],  elle[1]], [vous[1],  elles[1]]],
        [[tu[1],    je[1]], [tu[1],    vous[1]], [tu[1],    tu[1]], [tu[1],     nous[1]], [tu[1],    il[1]], [tu[1],    ils[1]], [tu[1],    elle[1]], [tu[1],    elles[1]]],
        [[nous[1],  je[1]], [nous[1],  vous[1]], [nous[1],  tu[1]], [nous[1],   nous[1]], [nous[1],  il[1]], [nous[1],  ils[1]], [nous[1],  elle[1]], [nous[1],  elles[1]]],
        [[il[1],    je[1]], [il[1],    vous[1]], [il[1],    tu[1]], [il[1],     nous[1]], [il[1],    il[1]], [il[1],    ils[1]], [il[1],    elle[1]], [il[1],    elles[1]]],
        [[ils[1],   je[1]], [ils[1],   vous[1]], [ils[1],   tu[1]], [ils[1],    nous[1]], [ils[1],   il[1]], [ils[1],   ils[1]], [ils[1],   elle[1]], [ils[1],   elles[1]]],
        [[elle[1],  je[1]], [elle[1],  vous[1]], [elle[1],  tu[1]], [elle[1],   nous[1]], [elle[1],  il[1]], [elle[1],  ils[1]], [elle[1],  elle[1]], [elle[1],  elles[1]]],
        [[elles[1], je[1]], [elles[1], vous[1]], [elles[1], tu[1]], [elles[1],  nous[1]], [elles[1], il[1]], [elles[1], ils[1]], [elles[1], elle[1]], [elles[1], elles[1]]],
      ]

      con_options = [0, 1]
      row_options = [0, 1, 2, 3, 4, 5, 6, 7]
      col_options = [0, 1, 2, 3, 4, 5, 6, 7]
      arr_options = [0, 1]

      cur_con = con_options.sample
      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      current_subject = subject[cur_con][cur_row][cur_col][cur_arr]

      print current_subject

      if    current_subject == "Je"
        File.open("lib/encyclopedia/language/francais/standard/subjects.txt", "a") { |f|
          f.puts current_subject
        }
      elsif current_subject == "Vous"
        File.open("lib/encyclopedia/language/francais/standard/subjects.txt", "a") { |f|
          f.puts current_subject
        }
      elsif current_subject == "Tu"
        File.open("lib/encyclopedia/language/francais/standard/subjects.txt", "a") { |f|
          f.puts current_subject
        }
      elsif current_subject == "Nous"
        File.open("lib/encyclopedia/language/francais/standard/subjects.txt", "a") { |f|
          f.puts current_subject
        }
      elsif current_subject == "Il"
        File.open("lib/encyclopedia/language/francais/standard/subjects.txt", "a") { |f|
          f.puts current_subject
        }
      elsif current_subject == "Ils"
        File.open("lib/encyclopedia/language/francais/standard/subjects.txt", "a") { |f|
          f.puts current_subject
        }
      elsif current_subject == "Elle"
        File.open("lib/encyclopedia/language/francais/standard/subjects.txt", "a") { |f|
          f.puts current_subject
        }
      elsif current_subject == "Elles"
        File.open("lib/encyclopedia/language/francais/standard/subjects.txt", "a") { |f|
          f.puts current_subject
        }

      elsif current_subject == "Ejay"
        File.open("lib/encyclopedia/language/francais/reversed/subjects.txt", "a") { |f|
          f.puts current_subject
        }
      elsif current_subject == "Ousvey"
        File.open("lib/encyclopedia/language/francais/reversed/subjects.txt", "a") { |f|
          f.puts current_subject
        }
      elsif current_subject == "Utay"
        File.open("lib/encyclopedia/language/francais/reversed/subjects.txt", "a") { |f|
          f.puts current_subject
        }
      elsif current_subject == "Ousnay"
        File.open("lib/encyclopedia/language/francais/reversed/subjects.txt", "a") { |f|
          f.puts current_subject
        }
      elsif current_subject == "Liay"
        File.open("lib/encyclopedia/language/francais/reversed/subjects.txt", "a") { |f|
          f.puts current_subject
        }
      elsif current_subject == "Lsiay"
        File.open("lib/encyclopedia/language/francais/reversed/subjects.txt", "a") { |f|
          f.puts current_subject
        }
      elsif current_subject == "Lleyay"
        File.open("lib/encyclopedia/language/francais/reversed/subjects.txt", "a") { |f|
          f.puts current_subject
        }
      elsif current_subject == "Llesay"
        File.open("lib/encyclopedia/language/francais/reversed/subjects.txt", "a") { |f|
          f.puts current_subject
        }
      else
        File.open("lib/encyclopedia/language/unknown/reversed/subjects.txt", "a") { |f|
          f.puts current_fruit
        }
      end
    end

    def self.verb_distortion
      # eat
      # dispose
      # keep

      essen
      tos
    end

#    def self.noun2_distortion
#      ct   = [    "chat", "atchay"    ]
#      ch   = [   "chien", "ienchay"   ]
#      oi   = [  "oiseau", "seauoiay"  ]
#      gr   = [  "souris", "ourisay"   ]
#      ou   = [    "ours", "rsouay"    ]
#      wo   = [ "orgueil", "gueiloray" ]
#      pr   = ["ostritch", "stritchoay"]
#      po   = [  "jiraff", "iraffjay"  ]
#      pi   = ["écureuil", "cureuiley" ]
#
#      animal_graph = [
#        [ [ct[0], ct[0]], [ct[0], ch[0]], [ct[0], oi[0]], [ct[0], gr[0]], [ct[0], wo[0]], [ct[0], ou[0]], [ct[0], pr[0]], [ct[0], po[0]] ],
#        [ [ch[0], ct[0]], [ch[0], ch[0]], [ch[0], oi[0]], [ch[0], gr[0]], [ch[0], wo[0]], [ch[0], ou[0]], [ch[0], pr[0]], [ch[0], po[0]] ],
#        [ [oi[0], ct[0]], [oi[0], ch[0]], [oi[0], oi[0]], [pi[0], gr[0]], [oi[0], wo[0]], [oi[0], ou[0]], [oi[0], pr[0]], [oi[0], po[0]] ],
#        [ [gr[0], ct[0]], [gr[0], ch[0]], [gr[0], oi[0]], [gr[0], gr[0]], [gr[0], wo[0]], [gr[0], ou[0]], [gr[0], pr[0]], [gr[0], po[0]] ],
#        [ [ou[0], ct[0]], [ou[0], ch[0]], [ou[0], oi[0]], [ou[0], gr[0]], [ou[0], wo[0]], [ou[0], ou[0]], [ou[0], pr[0]], [ou[0], po[0]] ],
#        [ [wo[0], ct[0]], [wo[0], ch[0]], [wo[0], oi[0]], [wo[0], gr[0]], [wo[0], wo[0]], [wo[0], ou[0]], [wo[0], pr[0]], [wo[0], po[0]] ],
#        [ [pr[0], ct[0]], [pr[0], ch[0]], [pr[0], oi[0]], [pr[0], gr[0]], [pr[0], wo[0]], [pr[0], ou[0]], [pr[0], pr[0]], [pr[0], po[0]] ],
#        [ [po[0], ct[0]], [po[0], ch[0]], [po[0], oi[0]], [po[0], gr[0]], [po[0], wo[0]], [po[0], ou[0]], [po[0], pr[0]], [po[0], po[0]] ],
#        [ [pi[0], ct[0]], [pi[0], ch[0]], [pi[0], oi[0]], [pi[0], gr[0]], [pi[0], wo[0]], [pi[0], ou[0]], [pi[0], pr[0]], [pi[0], po[0]] ],
#      ], [
#        [ [ct[1], ct[1]], [ct[1], ch[1]], [ct[1], oi[1]], [ct[1], gr[1]], [ct[1], wo[1]], [ct[1], ou[1]], [ct[1], pr[1]], [ct[1], po[1]] ],
#        [ [ch[1], ct[1]], [ch[1], ch[1]], [ch[1], oi[1]], [ch[1], gr[1]], [ch[1], wo[1]], [ch[1], ou[1]], [ch[1], pr[1]], [ch[1], po[1]] ],
#        [ [oi[1], ct[1]], [oi[1], ch[1]], [oi[1], oi[1]], [pi[1], gr[1]], [oi[1], wo[1]], [oi[1], ou[1]], [oi[1], pr[1]], [oi[1], po[1]] ],
#        [ [gr[1], ct[1]], [gr[1], ch[1]], [gr[1], oi[1]], [gr[1], gr[1]], [gr[1], wo[1]], [gr[1], ou[1]], [gr[1], pr[1]], [gr[1], po[1]] ],
#        [ [ou[1], ct[1]], [ou[1], ch[1]], [ou[1], oi[1]], [ou[1], gr[1]], [ou[1], wo[1]], [ou[1], ou[1]], [ou[1], pr[1]], [ou[1], po[1]] ],
#        [ [wo[1], ct[1]], [wo[1], ch[1]], [wo[1], oi[1]], [wo[1], gr[1]], [wo[1], wo[1]], [wo[1], ou[1]], [wo[1], pr[1]], [wo[1], po[1]] ],
#        [ [pr[1], ct[1]], [pr[1], ch[1]], [pr[1], oi[1]], [pr[1], gr[1]], [pr[1], wo[1]], [pr[1], ou[1]], [pr[1], pr[1]], [pr[1], po[1]] ],
#        [ [po[1], ct[1]], [po[1], ch[1]], [po[1], oi[1]], [po[1], gr[1]], [po[1], wo[1]], [po[1], ou[1]], [po[1], pr[1]], [po[1], po[1]] ],
#        [ [pi[1], ct[1]], [pi[1], ch[1]], [pi[1], oi[1]], [pi[1], gr[1]], [pi[1], wo[1]], [pi[1], ou[1]], [pi[1], pr[1]], [pi[1], po[1]] ],
#      ], [
#        [ [ct[0], ct[0]], [ct[0], ch[0]], [ct[0], oi[0]], [ct[0], gr[0]], [ct[0], wo[0]], [ct[0], ou[0]], [ct[0], pr[0]], [ct[0], po[0]] ],
#        [ [ch[0], ct[0]], [ch[0], ch[0]], [ch[0], oi[0]], [ch[0], gr[0]], [ch[0], wo[0]], [ch[0], ou[0]], [ch[0], pr[0]], [ch[0], po[0]] ],
#        [ [oi[0], ct[0]], [oi[0], ch[0]], [oi[0], oi[0]], [pi[0], gr[0]], [oi[0], wo[0]], [oi[0], ou[0]], [oi[0], pr[0]], [oi[0], po[0]] ],
#        [ [gr[0], ct[0]], [gr[0], ch[0]], [gr[0], oi[0]], [gr[0], gr[0]], [gr[0], wo[0]], [gr[0], ou[0]], [gr[0], pr[0]], [gr[0], po[0]] ],
#        [ [ou[0], ct[0]], [ou[0], ch[0]], [ou[0], oi[0]], [ou[0], gr[0]], [ou[0], wo[0]], [ou[0], ou[0]], [ou[0], pr[0]], [ou[0], po[0]] ],
#        [ [wo[0], ct[0]], [wo[0], ch[0]], [wo[0], oi[0]], [wo[0], gr[0]], [wo[0], wo[0]], [wo[0], ou[0]], [wo[0], pr[0]], [wo[0], po[0]] ],
#        [ [pr[0], ct[0]], [pr[0], ch[0]], [pr[0], oi[0]], [pr[0], gr[0]], [pr[0], wo[0]], [pr[0], ou[0]], [pr[0], pr[0]], [pr[0], po[0]] ],
#        [ [po[0], ct[0]], [po[0], ch[0]], [po[0], oi[0]], [po[0], gr[0]], [po[0], wo[0]], [po[0], ou[0]], [po[0], pr[0]], [po[0], po[0]] ],
#        [ [pi[0], ct[0]], [pi[0], ch[0]], [pi[0], oi[0]], [pi[0], gr[0]], [pi[0], wo[0]], [pi[0], ou[0]], [pi[0], pr[0]], [pi[0], po[0]] ],
#      ], [
#        [ [ct[1], ct[1]], [ct[1], ch[1]], [ct[1], oi[1]], [ct[1], gr[1]], [ct[1], wo[1]], [ct[1], ou[1]], [ct[1], pr[1]], [ct[1], po[1]] ],
#        [ [ch[1], ct[1]], [ch[1], ch[1]], [ch[1], oi[1]], [ch[1], gr[1]], [ch[1], wo[1]], [ch[1], ou[1]], [ch[1], pr[1]], [ch[1], po[1]] ],
#        [ [oi[1], ct[1]], [oi[1], ch[1]], [oi[1], oi[1]], [pi[1], gr[1]], [oi[1], wo[1]], [oi[1], ou[1]], [oi[1], pr[1]], [oi[1], po[1]] ],
#        [ [gr[1], ct[1]], [gr[1], ch[1]], [gr[1], oi[1]], [gr[1], gr[1]], [gr[1], wo[1]], [gr[1], ou[1]], [gr[1], pr[1]], [gr[1], po[1]] ],
#        [ [ou[1], ct[1]], [ou[1], ch[1]], [ou[1], oi[1]], [ou[1], gr[1]], [ou[1], wo[1]], [ou[1], ou[1]], [ou[1], pr[1]], [ou[1], po[1]] ],
#        [ [wo[1], ct[1]], [wo[1], ch[1]], [wo[1], oi[1]], [wo[1], gr[1]], [wo[1], wo[1]], [wo[1], ou[1]], [wo[1], pr[1]], [wo[1], po[1]] ],
#        [ [pr[1], ct[1]], [pr[1], ch[1]], [pr[1], oi[1]], [pr[1], gr[1]], [pr[1], wo[1]], [pr[1], ou[1]], [pr[1], pr[1]], [pr[1], po[1]] ],
#        [ [po[1], ct[1]], [po[1], ch[1]], [po[1], oi[1]], [po[1], gr[1]], [po[1], wo[1]], [po[1], ou[1]], [po[1], pr[1]], [po[1], po[1]] ],
#        [ [pi[1], ct[1]], [pi[1], ch[1]], [pi[1], oi[1]], [pi[1], gr[1]], [pi[1], wo[1]], [pi[1], ou[1]], [pi[1], pr[1]], [pi[1], po[1]] ],
#      ]
#
#      current_graph = animal_graph[0][0]
#
#      context_window = [0, 1, 2, 3]
#      row_options    = [0, 1, 2, 3, 4, 5, 6, 7]
#      col_options    = [0, 1, 2, 3, 4, 5, 6, 7]
#      arr_options    = [0, 1]
#
#      cur_con        = context_window.sample
#      cur_row = row_options.sample
#      cur_col = col_options.sample
#      cur_arr = arr_options.sample
#
#      #current_animal = animal_graph[cur_con][cur_row][cur_col][cur_arr]
#      current_animal = current_graph[cur_row][cur_col][cur_arr]
#
#      puts current_animal
#    end
  end
end
