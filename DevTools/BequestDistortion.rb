module BequestDistortion
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

      @new_class = word_classes.sample
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

      con_options = File.read("lib/npc/dialogue/context_window.txt") # [0, 1]
      #con_options = [0, 1]

      row_options = [0, 1, 2]
      col_options = [0, 1, 2]
      arr_options = [0, 1]

      cur_con = con_options #.sample
      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      @current_fruit = fruits[cur_con][cur_row][cur_col][cur_arr]

      print @current_fruit

      if    current_fruit == "pomme"
        File.open("lib/encyclopedia/language/francais/nouns.txt", "a") { |f|
          f.puts @current_fruit
        }
      elsif current_fruit == "banane"
        File.open("lib/encyclopedia/language/francais/nouns.txt", "a") { |f|
          f.puts @current_fruit
        }
      elsif current_fruit == "komashika"
        File.open("lib/encyclopedia/language/nihongo/nihongo.txt", "w") { |f|
          f.puts @current_fruit
        }
      if    current_fruit == "ommepay"
        File.open("lib/encyclopedia/language/francais/nouns.txt", "a") { |f|
          f.puts @current_fruit
        }
      elsif current_fruit == "ananebay"
        File.open("lib/encyclopedia/language/francais/nouns.txt", "a") { |f|
          f.puts @current_fruit
        }
      elsif current_fruit == "omashikakay"
        File.open("lib/encyclopedia/language/nihongo/nihongo.txt", "w") { |f|
          f.puts @current_fruit
        }
      else
        File.open("lib/encyclopedia/language/unknown/nouns.txt", "a") { |f|
          f.puts @current_fruit
        }
      end
    end

    def self.object_distortion
      ct   =     "chat", "atchay"    
      ch   =    "chien", "ienchay"   
      oi   =   "oiseau", "seauoiay"  
      gr   =   "souris", "ourisay"   
      ou   =     "ours", "rsouay"    
      wo   =  "orgueil", "gueiloray" 
      pr   = "ostritch", "stritchoay"
      po   =    "giraf", "iraffgay"  
      pi   = "écureuil", "cureuiley"

      objects = [[
        [ [ct[0], ct[0]], [ct[0], ch[0]], [ct[0], oi[0]], [ct[0], gr[0]], [ct[0], wo[0]], [ct[0], ou[0]], [ct[0], pr[0]], [ct[0], po[0]], [ct[0], pi[0]] ],
        [ [ch[0], ct[0]], [ch[0], ch[0]], [ch[0], oi[0]], [ch[0], gr[0]], [ch[0], wo[0]], [ch[0], ou[0]], [ch[0], pr[0]], [ch[0], po[0]], [ch[0], pi[0]] ],
        [ [oi[0], ct[0]], [oi[0], ch[0]], [oi[0], oi[0]], [pi[0], gr[0]], [oi[0], wo[0]], [oi[0], ou[0]], [oi[0], pr[0]], [oi[0], po[0]], [oi[0], pi[0]] ],
        [ [gr[0], ct[0]], [gr[0], ch[0]], [gr[0], oi[0]], [gr[0], gr[0]], [gr[0], wo[0]], [gr[0], ou[0]], [gr[0], pr[0]], [gr[0], po[0]], [gr[0], pi[0]] ],
        [ [ou[0], ct[0]], [ou[0], ch[0]], [ou[0], oi[0]], [ou[0], gr[0]], [ou[0], wo[0]], [ou[0], ou[0]], [ou[0], pr[0]], [ou[0], po[0]], [ou[0], pi[0]] ],
        [ [wo[0], ct[0]], [wo[0], ch[0]], [wo[0], oi[0]], [wo[0], gr[0]], [wo[0], wo[0]], [wo[0], ou[0]], [wo[0], pr[0]], [wo[0], po[0]], [wo[0], pi[0]] ],
        [ [pr[0], ct[0]], [pr[0], ch[0]], [pr[0], oi[0]], [pr[0], gr[0]], [pr[0], wo[0]], [pr[0], ou[0]], [pr[0], pr[0]], [pr[0], po[0]], [pr[0], pi[0]] ],
        [ [po[0], ct[0]], [po[0], ch[0]], [po[0], oi[0]], [po[0], gr[0]], [po[0], wo[0]], [po[0], ou[0]], [po[0], pr[0]], [po[0], po[0]], [po[0], pi[0]] ],
        [ [pi[0], ct[0]], [pi[0], ch[0]], [pi[0], oi[0]], [pi[0], gr[0]], [pi[0], wo[0]], [pi[0], ou[0]], [pi[0], pr[0]], [pi[0], po[0]], [pi[0], pi[0]] ],
      ], [
        [ [ct[1], ct[1]], [ct[1], ch[1]], [ct[1], oi[1]], [ct[1], gr[1]], [ct[1], wo[1]], [ct[1], ou[1]], [ct[1], pr[1]], [ct[1], po[1]], [ct[1], pi[1]] ],
        [ [ch[1], ct[1]], [ch[1], ch[1]], [ch[1], oi[1]], [ch[1], gr[1]], [ch[1], wo[1]], [ch[1], ou[1]], [ch[1], pr[1]], [ch[1], po[1]], [ch[1], pi[1]] ],
        [ [oi[1], ct[1]], [oi[1], ch[1]], [oi[1], oi[1]], [pi[1], gr[1]], [oi[1], wo[1]], [oi[1], ou[1]], [oi[1], pr[1]], [oi[1], po[1]], [oi[1], pi[1]] ],
        [ [gr[1], ct[1]], [gr[1], ch[1]], [gr[1], oi[1]], [gr[1], gr[1]], [gr[1], wo[1]], [gr[1], ou[1]], [gr[1], pr[1]], [gr[1], po[1]], [gr[1], pi[1]] ],
        [ [ou[1], ct[1]], [ou[1], ch[1]], [ou[1], oi[1]], [ou[1], gr[1]], [ou[1], wo[1]], [ou[1], ou[1]], [ou[1], pr[1]], [ou[1], po[1]], [ou[1], pi[1]] ],
        [ [wo[1], ct[1]], [wo[1], ch[1]], [wo[1], oi[1]], [wo[1], gr[1]], [wo[1], wo[1]], [wo[1], ou[1]], [wo[1], pr[1]], [wo[1], po[1]], [wo[1], pi[1]] ],
        [ [pr[1], ct[1]], [pr[1], ch[1]], [pr[1], oi[1]], [pr[1], gr[1]], [pr[1], wo[1]], [pr[1], ou[1]], [pr[1], pr[1]], [pr[1], po[1]], [pr[1], pi[1]] ],
        [ [po[1], ct[1]], [po[1], ch[1]], [po[1], oi[1]], [po[1], gr[1]], [po[1], wo[1]], [po[1], ou[1]], [po[1], pr[1]], [po[1], po[1]], [po[1], pi[1]] ],
        [ [pi[1], ct[1]], [pi[1], ch[1]], [pi[1], oi[1]], [pi[1], gr[1]], [pi[1], wo[1]], [pi[1], ou[1]], [pi[1], pr[1]], [pi[1], po[1]], [pi[1], pi[1]] ],
      ]]

      con_options = File.read("lib/npc/dialogue/context_window.txt") # [0, 1]
      #con_options = [0, 1]

      row_options    = [0, 1, 2, 3, 4, 5, 6, 7, 8]
      col_options    = [0, 1, 2, 3, 4, 5, 6, 7, 8]
      arr_options    = [0, 1]

      cur_cun = con_options #.sample
      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      @current_objects = objects[cur_row][cur_col][cur_arr]

      print @current_obejcts

#      ct   =     "chat", "atchay"    
#      ch   =    "chien", "ienchay"   
#      oi   =   "oiseau", "seauoiay"  
#      gr   =   "souris", "ourisay"   
#      ou   =     "ours", "rsouay"    
#      wo   =  "orgueil", "gueiloray" 
#      pr   = "ostritch", "stritchoay"
#      po   =   "giraf", "iraffjay"  
#      pi   = "écureuil", "cureuiley"

      if    current_subject == "chat"
        File.open("lib/encyclopedia/language/francais/objects.txt", "a") { |f|
          f.puts @current_objects
        }
      elsif current_subject == "chien"
        File.open("lib/encyclopedia/language/francais/objects.txt", "a") { |f|
          f.puts @current_objects
        }
      elsif current_subject == "oiseau"
        File.open("lib/encyclopedia/language/francais/objects.txt", "a") { |f|
          f.puts @current_objects
        }
      elsif current_subject == "souris"
        File.open("lib/encyclopedia/language/francais/objects.txt", "a") { |f|
          f.puts @current_objects
        }
      elsif current_subject == "ours"
        File.open("lib/encyclopedia/language/francais/objects.txt", "a") { |f|
          f.puts @current_objects
        }
      elsif current_subject == "orgueil"
        File.open("lib/encyclopedia/language/francais/objects.txt", "a") { |f|
          f.puts @current_objects
        }
      elsif current_subject == "ostritch"
        File.open("lib/encyclopedia/language/francais/objects.txt", "a") { |f|
          f.puts @current_objects
        }
      elsif current_subject == "giraf"
        File.open("lib/encyclopedia/language/francais/objects.txt", "a") { |f|
          f.puts @current_objects
        }
      elsif current_subject == "ecureuil"
        File.open("lib/encyclopedia/language/francais/objects.txt", "a") { |f|
          f.puts @current_objects
        }
      else
        File.open("lib/encyclopedia/language/francais/reversed/objects.txt", "a") { |f|
          f.puts @current_objects
        }
      end
    end

    def self.subject_distortion
      je    = [   "Je",   "Ejay"]
      vous  = [ "Vous", "Ousvey"]
      tu    = [   "Tu",   "Utay"]
      nous  = [ "Nous", "Ousnay"]
      il    = [   "Il",   "Liay"]
      ils   = [  "Ils",  "Lsiay"]
      elle  = [ "Elle", "Lleyay"]
      elles = ["Elles", "Llesay"]

      subjects = [[
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
      ]]

      con_options = File.read("lib/npc/dialogue/context_window.txt") # [0, 1]
      #con_options = [0, 1]

      row_options = [0, 1, 2, 3, 4, 5, 6, 7]
      col_options = [0, 1, 2, 3, 4, 5, 6, 7]
      arr_options = [0, 1]

      cur_con = con_options #.sample
      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      @current_subject = subjects[cur_con][cur_row][cur_col][cur_arr]

      #print @current_subject
      #print " "

      if    current_subject == "Je"
        File.open("lib/encyclopedia/language/francais/standard/subjects.txt", "a") { |f|
          f.puts @current_subject
        }
      elsif current_subject == "Vous"
        File.open("lib/encyclopedia/language/francais/standard/subjects.txt", "a") { |f|
          f.puts @current_subject
        }
      elsif current_subject == "Tu"
        File.open("lib/encyclopedia/language/francais/standard/subjects.txt", "a") { |f|
          f.puts @current_subject
        }
      elsif current_subject == "Nous"
        File.open("lib/encyclopedia/language/francais/standard/subjects.txt", "a") { |f|
          f.puts @current_subject
        }
      elsif current_subject == "Il"
        File.open("lib/encyclopedia/language/francais/standard/subjects.txt", "a") { |f|
          f.puts @current_subject
        }
      elsif current_subject == "Ils"
        File.open("lib/encyclopedia/language/francais/standard/subjects.txt", "a") { |f|
          f.puts @current_subject
        }
      elsif current_subject == "Elle"
        File.open("lib/encyclopedia/language/francais/standard/subjects.txt", "a") { |f|
          f.puts @current_subject
        }
      elsif current_subject == "Elles"
        File.open("lib/encyclopedia/language/francais/standard/subjects.txt", "a") { |f|
          f.puts @current_subject
        }
      elsif current_subject == "Ejay"
        File.open("lib/encyclopedia/language/francais/reversed/subjects.txt", "a") { |f|
          f.puts @current_subject
        }
      elsif current_subject == "Ousvey"
        File.open("lib/encyclopedia/language/francais/reversed/subjects.txt", "a") { |f|
          f.puts @current_subject
        }
      elsif current_subject == "Utay"
        File.open("lib/encyclopedia/language/francais/reversed/subjects.txt", "a") { |f|
          f.puts @current_subject
        }
      elsif current_subject == "Ousnay"
        File.open("lib/encyclopedia/language/francais/reversed/subjects.txt", "a") { |f|
          f.puts @current_subject
        }
      elsif current_subject == "Liay"
        File.open("lib/encyclopedia/language/francais/reversed/subjects.txt", "a") { |f|
          f.puts @current_subject
        }
      elsif current_subject == "Lsiay"
        File.open("lib/encyclopedia/language/francais/reversed/subjects.txt", "a") { |f|
          f.puts @current_subject
        }
      elsif current_subject == "Lleyay"
        File.open("lib/encyclopedia/language/francais/reversed/subjects.txt", "a") { |f|
          f.puts @current_subject
        }
      elsif current_subject == "Llesay"
        File.open("lib/encyclopedia/language/francais/reversed/subjects.txt", "a") { |f|
          f.puts @current_subject
        }
      else
        File.open("lib/encyclopedia/language/unknown/reversed/subjects.txt", "a") { |f|
          f.puts @current_subject
        }
      end
    end

    def self.verb_distortion
      # Francophonia
      m = [      "essen",     "eseney"] # eat
      d = ["disposer de", "isposerday"] # dispose
      r = [  "refroidir", "efroidiray"] # refridgerate

      verbs = [[
        [[m[0], m[0]], [m[0], d[0]], [m[0], r[0]]],
        [[d[0], m[0]], [d[0], d[0]], [d[0], r[0]]],
        [[r[0], m[0]], [r[0], d[0]], [r[0], r[0]]],
      ], [
        [[m[1], m[1]], [m[1], d[1]], [m[1], r[1]]],
        [[d[1], m[1]], [d[1], d[1]], [d[1], r[1]]],
        [[r[1], m[1]], [r[1], d[1]], [r[1], r[1]]],
      ]]

      con_options = File.read("lib/npc/dialogue/context_window.txt") # [0, 1]
      #con_options = [0, 1]

      row_options = [0, 1, 2]
      col_options = [0, 1, 2]
      arr_options = [0, 1]

      cur_con = con_options #.sample
      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      @current_verb = verbs[cur_con][cur_row][cur_col][cur_arr]

      #print @current_verb

      if    current_verb =="essen"
        File.open("lib/encyclopedia/language/allemane/verbs.txt", "a") { |f|
          f.puts @current_verb
        }
      elsif current_verb == "dispoer de"
        File.open("lib/encyclopedia/language/francais/verbs.txt", "a") { |f|
          f.puts @current_verb
        }
      elsif current_verb ==  "refroidir"
        File.open("lib/encyclopedia/language/francais/verbs.txt", "a") { |f|
          f.puts @current_verb
        }
      elsif current_verb ==     "eseney"
        File.open("lib/encyclopedia/language/francais/reversed/verbs.txt", "a") { |f|
          f.puts @current_verb
        }
      elsif current_verb == "isposerday"
        File.open("lib/encyclopedia/language/francais/reversed/verbs.txt", "a") { |f|
          f.puts @current_verb
        }
      elsif current_verb == "efroidiray"
        File.open("lib/encyclopedia/language/francais/reversed/verbs.txt", "a") { |f|
          f.puts @current_verb
        }
      else
        File.open("lib/encyclopedia/language/unknown/verbs.txt", "a") { |f|
          f.puts @current_verb
        }
      end
    end

    def self.full_sentence_creation
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
        [ ["le",  "le"], ["le",  "la"], ["le",  "les"] ],
        [ ["la",  "le"], ["la",  "la"], ["la",  "les"] ],
        [ ["les", "le"], ["les", "la"], ["les", "les"] ],
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
        [ ["es",    "es"], ["es",    "es ne"] ],
        [ ["es ne", "es"], ["es ne", "es ne"] ],
      ]

      possible_verbs = [
        [ ["mange", "mange"], ["mange", "jete"] ],
        [ ["jete",  "mange"], ["jete",  "jete"] ],
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

      File.open("_input/dialogue.txt", "a") { |f|
        f.puts "#{word_class} #{classified_nouns} #{adjectives} #{subjects} #{verbs}."
      }
    end

    def self.filtered_francais
      #                               la orange orange es mange.  les banane jaune es mange.  la orange orange es ne jete.  les banane jaune es ne jete.
      # la orange orange es mange.
      # les banane jaune es mange.
      # la orange orange es ne jete.
      # les banane jaune es ne jete.

      statements = [
        [["la orange orange es mange.",   "la orange orange es mange."], ["le orange orange es mange.",   "les banane jaune es mange."], ["le orange orange es mange.",   "les banane jaune es ne jete."]],
        [["les banane jaune es mange.",   "la orange orange es mange."], ["les banane jaune es mange.",   "les banane jaune es mange."], ["le banane jaune es mange.",    "les banane jaune es ne jete."]],
        [["la orange orange es ne jete.", "la orange orange es mange."], ["le orange orange es ne jete.", "les banane jaune es mange."], ["le orange ornage es ne jete.", "les banane jaune es ne jete."]],
        [["les banane jaune es ne jete.", "la orange orange es mange."], ["le banane jaune es ne jete.",  "les banane jaune es mange."], ["le banane jaune es ne jete.",  "les banane jaune es ne jete."]],
      ], [
        [["les banane jaune es mange.",   "la orange orange es mange."], ["les banane jaune es mange.",   "les banane jaune es mange."], ["le banane jaune es mange.",    "les banane jaune es ne jete."]],
        [["la orange orange es ne jete.", "la orange orange es mange."], ["le orange orange es ne jete.", "les banane jaune es mange."], ["le orange ornage es ne jete.", "les banane jaune es ne jete."]],
        [["les banane jaune es ne jete.", "la orange orange es mange."], ["le banane jaune es ne jete.",  "les banane jaune es mange."], ["le banane jaune es ne jete.",  "les banane jaune es ne jete."]],
        [["la orange orange es mange.",   "la orange orange es mange."], ["le orange orange es mange.",   "les banane jaune es mange."], ["le orange orange es mange.",   "les banane jaune es ne jete."]],
      ], [
        [["la orange orange es ne jete.", "la orange orange es mange."], ["le orange orange es ne jete.", "les banane jaune es mange."], ["le orange ornage es ne jete.", "les banane jaune es ne jete."]],
        [["les banane jaune es ne jete.", "la orange orange es mange."], ["le banane jaune es ne jete.",  "les banane jaune es mange."], ["le banane jaune es ne jete.",  "les banane jaune es ne jete."]],
        [["la orange orange es mange.",   "la orange orange es mange."], ["le orange orange es mange.",   "les banane jaune es mange."], ["le orange orange es mange.",   "les banane jaune es ne jete."]],
        [["les banane jaune es mange.",   "la orange orange es mange."], ["les banane jaune es mange.",   "les banane jaune es mange."], ["le banane jaune es mange.",    "les banane jaune es ne jete."]],
      ], [
        [["les banane jaune es ne jete.", "la orange orange es mange."], ["le banane jaune es ne jete.",  "les banane jaune es mange."], ["le banane jaune es ne jete.",  "les banane jaune es ne jete."]],
        [["la orange orange es mange.",   "la orange orange es mange."], ["le orange orange es mange.",   "les banane jaune es mange."], ["le orange orange es mange.",   "les banane jaune es ne jete."]],
        [["les banane jaune es mange.",   "la orange orange es mange."], ["les banane jaune es mange.",   "les banane jaune es mange."], ["le banane jaune es mange.",    "les banane jaune es ne jete."]],
        [["la orange orange es ne jete.", "la orange orange es mange."], ["le orange orange es ne jete.", "les banane jaune es mange."], ["le orange ornage es ne jete.", "les banane jaune es ne jete."]],
      ]

      row_options = [0, 1, 2, 3]
      col_options = [0, 1, 2]
      arr_options = [0, 1]

      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      created_statement = statements[0][cur_row][cur_col][cur_arr]
      ideal_statement   = statements[0][2][2][1]

      if created_statement == ideal_statement
        puts ">> #{created_statement}"
      else
        puts ">> Je ne avoir un mot pour toi."
      end
    end

    def self.adjust_context_window
      con_options = File.read("lib/npc/dialogue/context_window.txt").to_i

      # If context window is larger available contexts, reset to zero.
      if con_options > 1
        con_optios = 0
      end

      File.open("lib/npc/dialogue/context_window.txt", "w") { |f|
        con_options = con_options + 1

        f.puts con_options
      }
    end

    ## Auto correct based on the most likely thing meant.
    def self.auto_correct
      require "naive_bayes"

      auto_correction = NaiveBayes.new(:das_ours_il_essen,
                                       :le_ecureuil_ils_essen,
                                       :un_ours_je_essen,
                                       :das_orgueil_il_refroidir,
                                       :tun_ecureuilu_je_essen,
                                       :te_oiseau_ils_essen,
                                       :tos_chienos_il_disposer_de,
                                       :un_ecureuil_elles_essen,
      )

      ## das_ours_il_essen
      auto_correction(:le_ecureuil_ils_essen, "Ana ecureuil Ils essen", "ana")

      ## Tun ecureuilu je essen
      auto_correction(:tun_ecureuilu_je_essen, "tun cureuiley Je efroidiray", "tun")
      auto_correction(:tun_ecureuilu_je_essen, "tun cureuiley Je efroidiray", "tun")
      auto_correction(:un_ecureuil_elles_essen, "Un ecureuil Elles essen",     "un")
      auto_correction(:un_ecureuil_elles_essen, "un cureuiley Elles eseney",   "un")

      ## Un ours je essen
      auto_correction(:un_ours_je_essen,  "Un ours je refroidir", "Un")
      auto_correction(:un_ours_je_essen,     "Das ours je essen", "Un")

      ## Organ
      auto_correction(:das_orgueil_il_refroidir,    "Das orgueil Il refroidir", "das")
      auto_correction(:das_orgueil_il_refroidir, "Das gueiloray Il isposerday", "das")

      ## Ostritch
      auto_correction(:te_oiseau_ils_essen, "te seauoiay Lsiay essen", "te")

      ## Doggos
      auto_correction(:tos_chienos_il_disposer_de, "Tos chienos il disposer de", "tos")

      classification = auto_correction.classify("#{@new_class} #{@current_fruit} #{@current_subject} #{@current_verb}")

      label = classification[0]

      probability_no  = classification[1]
      probability_yes = 1 - probability_no

      puts label.tr "_", " "
    end
  end

  class WordGenerators
    def self.create_portmanteau
      7.times do
        hybrid_genders = [
          [["Te",  "Te"], ["Te",  "Ta"], ["Te",  "Tos"]],
          [["Ta" , "Te"], ["Ta",  "Ta"], ["Ta",  "Tos"]],
          [["Tos", "Te"], ["Tos", "Ta"], ["Tos", "Tos"]],
        ]

        gender_row_options = [0, 1, 2]
        gender_col_options = [0, 1, 2]
        gender_arr_options = [0, 1]

        gender_cur_row = gender_row_options.sample
        gender_cur_col = gender_col_options.sample
        gender_cur_arr = gender_arr_options.sample

        h_gender = hybrid_genders[gender_cur_row][gender_cur_col][gender_cur_arr]

        #               ie  shado gareji ribingurumu  roka   daidakoro shinku aisubokkusu uindo  basurumu shinshitsu
        # ie            i,i  i,s1  i,g    i,r1         i,r2   i,d       i,s2    i,a         i,u    i.b      i,s3     # House
        # shado        s1,i s1,s1 s1,g   s1,r1        s1,r2  s1,d      s1,s2   s1,a        s1,u   s1.b     s1,s3     # Slope
        # gareji        g,i  g,s1  g,g    g,r1         g,r2   g,d       g,s2    g,a         g,u    g.b      g,s3     # Garage
        # ribingurumu  r1,i r1,s1 r1,g   r1,r1        r1,r2  r1,d      r1,s2   r1,a        r1,u   r1.b     r1,s3     # Living Room
        # roka          g,i  g,s1  g,g    g,r1         g,r2   g,d       g,s     g,a         g,u    g.b      g,s3     # Fridge
        # daidakoro     d,i  d,s1  d,g    d,r1         d,r2   d,d       d,s     d,a         d,u    d.b      d,s3     # The first time
        # shinku       s2,i s2,s1 s2,g   s2,r1        s2,r2  s2,d      s2,s    s2,a        s2,u   s2.b     s2,s3     # Sink
        # aisubokkusu   a,i  a,s1  a,g    a,r1         a,r2   a,d       a,s     a,a         a,u    a.b      a,s2     # Ice Box
        # uindo         u,i  u,s1  u,g    u,r1         u,r2   u,d       u,s     u,a         u,u    u.b      u,s2     # Window
        # basurumu      b,i  b,s1  b,g    b,r1         b,r2   b,d       b,s     b,a         b,u    b.b      b,s2     # Bathroom
        # shinshitsu   s3,i s3,s1 s3,g   s3,r1        s3,r2  s3,d      s3,s    s3,a         s3,u  s3.b     s3,s2     # Bedroom

        locations = [
          [["Ie",          "Ie"], ["Ie",          "Shado"], ["Ie",          "Gareji"], ["Ie",          "Ribingurumu"], ["Ie",          "Roka"], ["Ie",          "Daidakoro"], ["Ie",          "Shinku"], ["Ie",          "Aisubokkusu"], ["Ie",          "Uindo"], ["Ie",          "Basurumu"], ["Ie",          "Shinshitsu"]],
          [["Shadi" ,      "Ie"], ["Shado",       "Shado"], ["Shado",       "Gareji"], ["Shado",       "Ribingurumu"], ["Shado" ,      "Roka"], ["Shado",       "Daidakoro"], ["Shado",       "Shinku"], ["Shado",       "Aisubokkusu"], ["Shado",       "Uindo"], ["Shado",       "Basurumu"], ["Shado",       "Shinshitsu"]],
          [["Gareji",      "Ie"], ["Gareji",      "Shado"], ["Gareji",      "Gareji"], ["Gareji",      "Ribingurumu"], ["Gareji",      "Roka"], ["Gareji",      "Daidakoro"], ["Gareji",      "Shinku"], ["Gareji",      "Aisubokkusu"], ["Garehi",      "Uindo"], ["Gareji",      "Basurumu"], ["Shadow",      "Shinshitsu"]],
          [["Ribingurumu", "Ie"], ["Ribingurumu", "Shado"], ["Ribingurumu", "Gareji"], ["Ribingurumu", "Ribingurumu"], ["Ribingurumu", "Roka"], ["Ribingurumu", "Daidakoro"], ["Ribingurumu", "Shinku"], ["Ribingurumu", "Aisubokkusu"], ["Ribingurumu", "Uindo"], ["Ribingurumu", "Basurumu"], ["Ribingurumu", "Shinshitsu"]],
          [["Roka",        "Ie"], ["Roka",        "Shado"], ["Roka",        "Gareji"], ["Roka",        "Ribingurumu"], ["Roka",        "Roka"], ["Roka",        "Daidakoro"], ["Roka",        "Shinku"], ["Roka",        "Aisubokkusu"], ["Roka",        "Uindo"], ["Roka",        "Basurumu"], ["Roka",        "Shinshitsu"]],
          [["Daidakoro",   "Ie"], ["Daidakoro",   "Shado"], ["Daidakoro",   "Gareji"], ["Daidakoro",   "Ribingurumu"], ["Daidakoro",   "Roka"], ["Daidakoro",   "Daidakoro"], ["Daidakoro",   "Shinku"], ["Daidakoro",   "Aisubokkusu"], ["Daidakoro",   "Uindo"], ["Daidakoro",   "Basurumu"], ["Daidakoro",   "Shinshitsu"]],
          [["Shinku",      "Ie"], ["Shinku",      "Shado"], ["Shinku",      "Gareji"], ["Shinku",      "Ribingurumu"], ["Shinku",      "Roka"], ["Shinku",      "Daidakoro"], ["Shinku",      "Shinku"], ["Shinku",      "Aisubokkusu"], ["Shinku",      "Uindo"], ["Shinku",      "Basurumu"], ["Shinku",      "Shinshitsu"]],
          [["aisubokkusu", "Ie"], ["Aisubokkusu", "Shado"], ["Aisubokkusu", "Gareji"], ["Aisubokkusu", "Ribingurumu"], ["Aisubokkusu", "Roka"], ["Aisubokkusu", "Daidakoro"], ["Aisubokkusu", "Shinku"], ["Aisubokkusu", "Aisubokkusu"], ["Aisubokkusu", "Uindo"], ["Aisubokkusu", "Basurumu"], ["Aisubokkusu", "Shinshitsu"]],
          [["Uindo",       "Ie"], ["Uindo",       "Shado"], ["Uindo",       "Gareji"], ["Uindo"      , "Ribingurumu"], ["Uindo",       "Roka"], ["Uindo",       "Daidakoro"], ["Uindo",       "Shinku"], ["Uindo",       "Aisubokkusu"], ["Uindo",       "Uindo"], ["Uindo",       "Basurumu"], ["Uindo",       "Shinshitsu"]],
          [["Basurumu",    "Ie"], ["Basurumu",    "Shado"], ["Basurumu",    "Gareji"], ["Basurumu",    "Ribingurumu"], ["Basurumu",    "Roka"], ["Basurumu",    "Daidakoro"], ["Basurumu",    "Shinku"], ["Basurumu",    "Aisubokkusu"], ["Basurumu",    "Uindo"], ["Basurumu",    "Basurumu"], ["Basurumu",    "Shinshitsu"]],
          [["Shinshitsu",  "Ie"], ["Shinsitsu",   "Shado"], ["Shinsitsu",   "Gareji"], ["Shinshitsu",  "Ribingurumu"], ["Shinshitsu",  "Roka"], ["Shinshitsu",  "Daidakoro"], ["Shinshitsu",  "Shinku"], ["Shinshitsu",  "Aisubokkusu"], ["Shinshitsu",  "Uindo"], ["Shinshitsu",  "Basurumu"], ["Shinshitsu",  "Shinshitsu"]],
        ]

        location_row_options = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        location_col_options = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        location_arr_options = [0, 1]

        l_cur_row = location_row_options.sample
        l_cur_col = location_col_options.sample
        l_cur_arr = location_arr_options.sample

        cur_location = locations[l_cur_row][l_cur_col][l_cur_arr]

        #            guache entre sortie porte canape pratiquer manger lave  merde  dorm  mur
        # guache      g,g    g,e   g,s    g,p   g,c    g,p       g,m1   g,l   g,m2   g,d   g,m3 # Gouache paint
        # entre       e,g    e,e   e,s    e,p   e,c    e,p       e,m1   e,l   e,m2   e,d   e,m3 # Between
        # sortie      s,g    s,e   s,s    s,p   s,c    s,p       s,m1   s,l   s,m2   s,d   s,m3 # Exit
        # porte       p,g    p,e   p,s    p,p   p,c    p,p       p,m1   p,l   p,m2   p,d   p,m3 # Door
        # canape      c,g    c,e   c,s    c,p   c,c    c,p       c,m1   c,l   c,m2   c,d   c,m3 # Couch
        # pratiquer   p,g    p,e   p,s    p,p   p,c    p,p       p,m1   p,l   p,m2   p,d   p,m3 # Practice
        # manger     m1,g   m1,e  m1,s   m1,p  m1,c   m1,p      m1,m1  m1,l  m1,m2  m1,d  m1,m3 # To Eat
        # lave        l,g    l,e   l,s    l,p   l,c    l,p       l,m1   l,l   l,m2   l,d   l,m3 # Washed / Wash
        # merde      m2,g   m2,e  m2,s   m2,p  m2,c   m2,p      m2,m1  m2,l  m2,m2  m2,d  m2,m3 # Shit / Poo ( informal )
        # dorm        d,g    d,e   d,s    d,p   d,c    d,p       d,m1   d,l   d,m2   d,d   d,m3 # Sleep
        # mur        m3,g   m3,e  m3,s   m3,p  m3,c   m3,p      m3,m1  m3,l  m3,m   m3,d  m3,m2 # Wall

        verbs = [
          [["gouache",   "gouache"], ["gouache",   "entre"], ["gouache",   "sortie"], ["gouache",   "porte"], ["gouache",   "canape"], ["gouache",   "pratiquer"], ["gouache",   "manger"], ["gouache",   "laver"], ["gouache",   "merde"], ["gouache",   "dorm"], ["gouache",   "mur"]],
          [["entre",     "gouache"], ["entre",     "entre"], ["entre",     "sortie"], ["entre",     "porte"], ["entre",     "canape"], ["entre",     "pratiquer"], ["entre",     "manger"], ["entre",     "laver"], ["entre",     "merde"], ["entre",     "dorm"], ["entre",     "mur"]],
          [["sortie",    "gouache"], ["sortie",    "entre"], ["sortie",    "sortie"], ["sortie",    "porte"], ["sortie",    "canape"], ["sortie",    "pratiquer"], ["sortie",    "manger"], ["sortie",    "laver"], ["sortie",    "merde"], ["sortie",    "dorm"], ["sortie",    "mur"]],
          [["porte",     "gouache"], ["porte",     "entre"], ["porte",     "sortie"], ["porte",     "porte"], ["porte",     "canape"], ["porte",     "pratiquer"], ["porte",     "manger"], ["porte",     "laver"], ["porte",     "merde"], ["porte",     "dorm"], ["prte",      "mur"]],
          [["canape",    "gouache"], ["canape",    "entre"], ["canape",    "sortie"], ["canape",    "porte"], ["canape",    "canape"], ["canape",    "pratiquer"], ["canape",    "manger"], ["canape",    "laver"], ["canape",    "merde"], ["canape",    "dorm"], ["canape",    "mur"]],
          [["pratiquer", "gouache"], ["pratiquer", "entre"], ["pratiquer", "sortie"], ["pratiquer", "porte"], ["pratiquer", "canape"], ["pratiquer", "pratiquer"], ["pratiquer", "manger"], ["pratiquer", "laver"], ["pratiquer", "merde"], ["pratiquer", "dorm"], ["pratiquer", "mur"]],
          [["manger",    "gouache"], ["manger",    "entre"], ["manger",    "sortie"], ["manger",    "porte"], ["manger",    "canape"], ["manger",    "pratiquer"], ["manger",    "manger"], ["manger",    "laver"], ["manger",    "merde"], ["manger",    "dorm"], ["manger",    "mur"]],
          [["laver",     "gouache"], ["laver",     "entre"], ["laver",     "sortie"], ["laver",     "porte"], ["laver",     "canape"], ["laver",     "pratiquer"], ["laver",     "manger"], ["laver",     "laver"], ["laver",     "merde"], ["laver",     "dorm"], ["laver",     "mur"]],
          [["merde",     "gouache"], ["merde",     "entre"], ["merde" ,    "sortie"], ["merde",     "porte"], ["merde",     "canape"], ["merde",     "pratiquer"], ["merde",     "manger"], ["merde",     "laver"], ["merde",     "merde"], ["merde",     "dorm"], ["merde",     "mur"]],
          [["dorm",      "gouache"], ["dorm",      "entre"], ["dorm",      "sortie"], ["dorm",      "porte"], ["dorm",      "canape"], ["dorm",      "pratiquer"], ["dorm",      "manger"], ["dorm",      "laver"], ["dorm",      "merde"], ["dorm",      "dorm"], ["dorm",      "mur"]],
          [["mur",       "gouache"], ["mur",       "entre"], ["mur",       "sortie"], ["mur",       "porte"], ["mur",       "canape"], ["mur",       "pratiquer"], ["mur",       "manger"], ["mur",       "laver"], ["mur",       "merde"], ["mur",       "dorm"], ["mur",       "mur"]],
        ]

        verb_row_options = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        verb_col_options = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        verb_arr_options = [0, 1]

        v_cur_row = verb_row_options.sample
        v_cur_col = verb_row_options.sample
        v_cur_arr = verb_arr_options.sample

        cur_verb = verbs[v_cur_row][v_cur_col][v_cur_arr]

        ## Create word
        current_word = "#{h_gender} #{cur_location}#{cur_verb}"

        puts current_word
      end
    end

    def self.adapt_words
      number = 0

      # The actual dictionary of words to adapt.
      dictionary = File.readlines("_input/dictionary/word_list.txt").sort

      # Basing iteration limit on total dictionary size.
      iter_limit = dictionary.size.to_i

      alphabet = {
        # Vowels and consonants that remain the same.
        "B" => "B", "C" => "C",
        "G" => "G", "N" => "N",
        "K" => "K", "M" => "M",
        "P" => "P", "Q" => "Q",
        "T" => "T", "V" => "V",
        "W" => "W", "Z" => "Z", 

        # Vowel specific rules.
        "A" => "A", "I" =>  "",
        "O" => "O", "U" =>  "U",
        "E" => "E", "Y" => "XY",

        # Relevant consonant shifts.
        "D" =>  "D", "F" =>  "Z",
        "S" =>  "Z", "R" =>  "D",
        "L" =>  "H", "J" =>  "N",
        "X" => "XY", "H" =>  "H",

        " " => " ",
      }

      # Limits the iteration to the size of the actual dictionary.
      iter_limit.times do
        chosen_word = dictionary[number].upcase

        # What is displayed in the terminal.
        print "\nResult: #{chosen_word.downcase.strip} => "

        # What actually gets written to XML document.
        print "\nResult: #{chosen_word.downcase.strip} => "

        word_length    = chosen_word.to_s.split("")
        word_iteration = word_length.size.to_i
        word_char = 0

        word_iteration.times do
          char = alphabet[chosen_word[word_char]].to_s

          # What is displayed in the terminal.
          print char.downcase

          # What actually gets written to XML doucment.
          f.print char.downcase

          word_char = word_char + 1
        end

        puts " "
        puts " "

        # Prevents stack level going to deep.
        sleep(0.5)

        number = number + 1
      end
    end

    def self.word_lengths
      def self.one_character
        dipthongs  = File.readlines("dictionary/dipthongs.txt")
        tripthongs = File.readlines("dictionary/tripthongs.txt")

        chosen_tripthong = tripthongs.sample.strip.to_s
        chosen_dipthong  = dipthongs.sample.strip.to_s

        generated_word = chosen_tripthong + chosen_dipthong

        masculine      = generated_word.chop +  "u"
        feminine       = generated_word.chop +  "a"
        plural         = generated_word.chop + "os"
    
        puts "Single Factor"
        puts "#{masculine} #{feminine} #{plural}"

        puts " "
      end

      def self.three_character
        dipthongs  = File.readlines("dictionary/dipthongs.txt")
        tripthongs = File.readlines("dictionary/tripthongs.txt")

        chosen_tripthong1 = tripthongs.sample.strip.to_s
        chosen_dipthong1  = dipthongs.sample.strip.to_s

        chosen_tripthong2 = tripthongs.sample.strip.to_s
        chosen_dipthong2  = dipthongs.sample.strip.to_s

        chosen_tripthong3 = tripthongs.sample.strip.to_s
        chosen_dipthong3  = dipthongs.sample.strip.to_s

        component_one = chosen_tripthong1 + chosen_dipthong1
        component_two = chosen_tripthong2 + chosen_dipthong2
        component_tre = chosen_tripthong3 + chosen_dipthong3

        generated_word = component_one + component_two + component_tre

        masculine      = generated_word.chop +  "u"
        feminine       = generated_word.chop +  "a"
        plural         = generated_word.chop + "os"
    
        puts "Three Factor"
        puts "#{masculine} #{feminine} #{plural}"

        puts " "
      end

      def self.five_character
        dipthongs  = File.readlines("dictionary/dipthongs.txt")
        tripthongs = File.readlines("dictionary/tripthongs.txt")

        chosen_tripthong1 = tripthongs.sample.strip.to_s
        chosen_dipthong1  = dipthongs.sample.strip.to_s

        chosen_tripthong2 = tripthongs.sample.strip.to_s
        chosen_dipthong2  = dipthongs.sample.strip.to_s

        chosen_tripthong3 = tripthongs.sample.strip.to_s
        chosen_dipthong3  = dipthongs.sample.strip.to_s

        chosen_tripthong4 = tripthongs.sample.strip.to_s
        chosen_dipthong4  = dipthongs.sample.strip.to_s

        chosen_tripthong5 = tripthongs.sample.strip.to_s
        chosen_dipthong5  = dipthongs.sample.strip.to_s

        component_one = chosen_tripthong1 + chosen_dipthong1
        component_two = chosen_tripthong2 + chosen_dipthong2
        component_tre = chosen_tripthong3 + chosen_dipthong3
        component_fro = chosen_tripthong4 + chosen_dipthong4
        component_fiv = chosen_tripthong5 + chosen_dipthong5

        generated_word = component_one + component_two + component_tre + component_fro + component_fiv

        masculine      = generated_word.chop +  "u"
        feminine       = generated_word.chop +  "a"
        plural         = generated_word.chop + "os"
    
        puts "Five Factor"
        puts "#{masculine} #{feminine} #{plural}"

        puts " "
      end

      def self.seven_character
        dipthongs  = File.readlines("dictionary/dipthongs.txt")
        tripthongs = File.readlines("dictionary/tripthongs.txt")

        chosen_tripthong1 = tripthongs.sample.strip.to_s
        chosen_dipthong1  = dipthongs.sample.strip.to_s

        chosen_tripthong2 = tripthongs.sample.strip.to_s
        chosen_dipthong2  = dipthongs.sample.strip.to_s

        chosen_tripthong3 = tripthongs.sample.strip.to_s
        chosen_dipthong3  = dipthongs.sample.strip.to_s

        chosen_tripthong4 = tripthongs.sample.strip.to_s
        chosen_dipthong4  = dipthongs.sample.strip.to_s

        chosen_tripthong5 = tripthongs.sample.strip.to_s
        chosen_dipthong5  = dipthongs.sample.strip.to_s

        chosen_tripthong6 = tripthongs.sample.strip.to_s
        chosen_dipthong6  = dipthongs.sample.strip.to_s

        chosen_tripthong7 = tripthongs.sample.strip.to_s
        chosen_dipthong7  = dipthongs.sample.strip.to_s

        component_one = chosen_tripthong1 + chosen_dipthong1 # dipthongs.sample.strip.to_s
        component_two = chosen_tripthong2 + chosen_dipthong2 # dipthongs.sample.strip.to_s
        component_tre = chosen_tripthong3 + chosen_dipthong3 # dipthongs.sample.strip.to_s
        component_fro = chosen_tripthong4 + chosen_dipthong4 # dipthongs.sample.strip.to_s
        component_fiv = chosen_tripthong5 + chosen_dipthong5 # dipthongs.sample.strip.to_s
        component_six = chosen_tripthong6 + chosen_dipthong6 # dipthongs.sample.strip.to_s
        component_sev = chosen_tripthong7 + chosen_dipthong7 # dipthongs.sample.strip.to_s

        generated_word = component_one + component_two + component_tre + component_fro + component_fiv + component_six + component_sev

        masculine      = generated_word.chop +  "u"
        feminine       = generated_word.chop +  "a"
        plural         = generated_word.chop + "os"
    
        puts "Seven Factor"
        puts "#{masculine} #{feminine} #{plural}"

        puts " "
      end
    end

  end

  class EnemyNameGenerator
    ## System Nodes
    def self.create_name  
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

      possible_elements = [ 
        [["Le flotteur",                "Le flotteur"], ["Le flotteur",                  "La noyee"], ["Le flotteur",                 "Les tempêtes de poussières"], ["Le flotteur",                 "Anos dokubutsos"], ["Le flotteur",                 "Anos oshokos"], ["Le flotteur",                 "Le void"],  ["Le flotteur",                "le Habu"]],
        [["La noyee",                   "Le flotteur"], ["Anos Danki",                   "La noyee"], ["Anos Danki",                  "Les tempêtes de poussières"], ["La noyee",                    "Anos dokubutsos"], ["La noyee",                    "Anos oshokos"], ["La noyee",                    "Le void"],  ["Le noyee",                   "le Habu"]],
        [["Les tempêtes de poussières", "Le flotteur"], ["Les tempêtes de poussières",   "La noyee"], ["Les tempêtes de poussières",  "Les tempêtes de poussières"], ["Les tempêtes de poussières",  "Anos dokubutsos"], ["Les tempêtes de poussières",  "Anos oshokos"], ["Les tempêtes de poussières",  "Le void"],  ["Lea tempetes de poussieres", "le Habu"]],
        [["Anos dokubutsos",            "Le flotteur"], ["Anos dokubutsos",              "La noyee"], ["Anos dokubutsos",             "Les tempêtes de poussières"], ["Anos dokubutsos",             "Anos dokubutsos"], ["Anos dokubutsos",             "Anos oshokos"], ["Anos dokubutsos",             "Le void"],  ["Anos dokubutsos",            "le Habu"]],
        [["Anos oshokos",               "Le flotteur"], ["Anos oshokos",                 "La noyee"], ["Anos oshokos",                "Les tempêtes de poussières"], ["Anos oshokos",                "Anos dokubutsos"], ["Anos oshokos",                "Anos oshokos"], ["Anos oshokos",                "Le void"],  ["Anos oshokos",               "le Habu"]],
        [["Le void",                    "Le flotteur"], ["Le void",                      "La noyee"], ["Anos Shi",                    "Les tempêtes de poussières"], ["Anos Shi",                    "Anos dokubutsos"], ["Le void",                     "Anos oshokos"], ["Le void",                     "Le void"],  ["Le Void",                    "le Haby"]],
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

      generated_npc = "#{element_type} #{enemy_type} #{adverb_type}"

      print "#{generated_npc} "
    end
  end

  class MeasureRisk
    def self.open_case
      puts "["
    end

    def self.evaluate_class
      word_class = File.read("lib/encyclopedia/language/francais/word_classes.txt")
      comparator = word_class.to_f
      size_limit = word_class.size.to_i
      index      = 0

      predicted_class = File.read("lib/player/language/francias/current_class.txt")

      size_limit.times do
        current_class             = word_class[index]
        current_class_probability = 1 / comparator

        if current_class == predicted_class
          print current_class
        else
          @class_risk = class_class_probability + class_class_probability % 0.99
        end

        index = index + 1
      end
    end

    def self.evaluate_noun
      noun       = File.read("lib/encyclopedia/language/francais/nouns.txt")
      comparator = nouns.to_f
      size_limit = nouns.size.to_i
      index      = 0

      predicted_noun = File.read("lib/player/language/francias/current_noun.txt")

      size_limit.times do
        current_noun             = noun[index]
        current_noun_probability = 1 / comparator

        if current_noun == predicted_noun
          print current_noun
        else
          @noun_risk = class_noun_probability + class_noun_probability % 0.99
        end

        index = index + 1
      end
    end

    def self.evaluate_subject
      subject    = File.read("lib/encyclopedia/language/francais/subjects.txt")
      comparator = subjects.to_f
      size_limit = subjects.size.to_i
      index      = 0

      predicted_subject = File.read("lib/player/language/francias/current_subject.txt")

      size_limit.times do
        current_subject             = subject[index]
        current_subject_probability = 1 / comparator

        if current_subject == predicted_subject
          print current_subject
        else
          @subject_risk = class_subject_probability + class_subject_probability % 0.99
        end

        index = index + 1
      end
    end

    def self.evaluate_verb
      verb       = File.read("lib/encyclopedia/language/francais/verbs.txt")
      comparator = verb.to_f
      size_limit = verb.size.to_i
      index      = 0

      predicted_verb = File.read("lib/player/language/francias/current_verb.txt")

      size_limit.times do
        current_verb              = verb[index]
        current_verb_probability = 1 / comparator

        if current_verb == predicted_verb
          print current_verb
        else
          @verb_risk = class_verb_probability + class_verb_probability % 0.99
        end

        index = index + 1
      end
    end

    def self.evaluate_adverb
      adverb     = File.read("lib/encyclopedia/language/francais/adverbs.txt")
      comparator = adverb.to_f
      size_limit = adverb.size.to_i
      index      = 0

      predicted_adverb = File.read("lib/player/language/francias/current_adverb.txt")

      size_limit.times do
        current_adverb             = adverb[index]
        current_adverb_probability = 1 / comparator

        if current_adverb == predicted_adverb
          print current_adverb
        else
          @adverb_risk = class_adverb_probability + class_adverb_probability % 0.99
        end

        index = index + 1
      end
    end

    def self.total_risk
      total_risk = @class_risk + @noun_risk + @subject_risk + @verb_risk + @adverb_risk

      class total_risk
      when 0.001..0.250; puts     "Neglible risk.]"
      when 0.260..0.350; puts "Non neglible risk.]"
      when 0.360..0.500; puts "Medium level risk.]"
      when 0.501..0.750; puts  "Major level risk.]"
      when 0.751..1.000; puts  "High risk factor.]"
      else
        puts total_risk
      end
    end
  end
end
