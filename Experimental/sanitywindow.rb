# [net_outcome][context_window][current_row][current_col][chosen_dialogue]

# Allows the dialogue engine to modify its own context window for offering realistic unscripted dialogue based on sanity / trust metrics.

## other metrical possibilities
## integrity
## corruption

ho   =        "homme", "ommehay" 
fe   =        "femme", "emmefay"          
fi   =        "fille", "illefay"          
ga   =       "garcon", "arcongay"         
ta   =        "tante", "antetay"          
oj   =        "oncle", "cleon"            
cofi =  "cousinfille", "ousincay iilefay" 
coga = "cousingarcon", "ousincay arcongay"
grm  =    "grandmere", "randgra eremay"   
grp  =    "grandpere", "randgra erepay"   

ct   =     "chat", "atchay"    
ch   =    "chien", "ienchay"   
oi   =   "oiseau", "seauoiay"  
gr   =   "souris", "ourisay"   
ou   =     "ours", "rsouay"    
wo   =  "orgueil", "gueiloray" 
pr   = "ostritch", "stritchoay"
po   =   "jiraff", "iraffjay"  
pi   = "écureuil", "cureuiley" 

m    = "maison", "aisonmay"
c    = "cabin",  "abincay"
e    = "ecole",  "coley"

oju  = "ojijaku"
neo  = "ne ojijaku"

sanity_window = [
  [
    [[ho[0],   ho[0]], [ho[0],   fe[0]], [ho[0],   fi[0]], [ho[0],   ga[0]], [ho[0],   ta[0]], [ho[0],   oj[0]], [ho[0],   cofi[0]], [ho[0],   coga[0]], [ho[0],   grm[0]], [ho[0],   grp[0]]],
    [[fe[0],   ho[0]], [fe[0],   fe[0]], [fe[0],   fi[0]], [fe[0],   ga[0]], [fe[0],   ta[0]], [fe[0],   oj[0]], [fe[0],   cofi[0]], [fe[0],   coga[0]], [fe[0],   grm[0]], [fe[0],   grp[0]]],
    [[fi[0],   ho[0]], [fi[0],   fe[0]], [fi[0],   fi[0]], [fi[0],   ga[0]], [fi[0],   ta[0]], [fi[0],   oj[0]], [fi[0],   cofi[0]], [fi[0],   coga[0]], [fi[0],   grm[0]], [fi[0],   grp[0]]],
    [[ga[0],   ho[0]], [ga[0],   fe[0]], [ga[0],   fi[0]], [ga[0],   ga[0]], [ga[0],   ta[0]], [ga[0],   oj[0]], [ga[0],   cofi[0]], [ga[0],   coga[0]], [ga[0],   grm[0]], [ga[0],   grp[0]]],
    [[ta[0],   ho[0]], [ta[0],   fe[0]], [ta[0],   fi[0]], [ta[0],   ga[0]], [ta[0],   ta[0]], [ta[0],   oj[0]], [ta[0],   cofi[0]], [ta[0],   coga[0]], [ta[0],   grm[0]], [ta[0],   grp[0]]],
    [[oj[0],   ho[0]], [oj[0],   fe[0]], [oj[0],   fi[0]], [oj[0],   ga[0]], [oj[0],   ta[0]], [oj[0],   oj[0]], [oj[0],   cofi[0]], [oj[0],   coga[0]], [oj[0],   grm[0]], [oj[0],   grp[0]]],
    [[cofi[0], ho[0]], [cofi[0], fe[0]], [cofi[0], fi[0]], [cofi[0], ga[0]], [cofi[0], ta[0]], [cofi[0], oj[0]], [cofi[0], cofi[0]], [cofi[0], coga[0]], [cofi[0], grm[0]], [cofi[0], grp[0]]],
    [[coga[0], ho[0]], [coga[0], fe[0]], [coga[0], fi[0]], [coga[0], ga[0]], [coga[0], ta[0]], [coga[0], oj[0]], [coga[0], cofi[0]], [coga[0], coga[0]], [coga[0], grm[0]], [coga[0], grp[0]]],
    [[grm[0],  ho[0]], [grm[0],  fe[0]], [grm[0],  fi[0]], [grm[0],  ga[0]], [grm[0],  ta[0]], [grm[0],  oj[0]], [grm[0],  cofi[0]], [grm[0],  coga[0]], [grm[0],  grm[0]], [grm[0],  grp[0]]],
    [[grp[0],  ho[0]], [grp[0],  fe[0]], [grp[0],  fi[0]], [grp[0],  ga[0]], [grp[0],  ta[0]], [grp[0],  oj[0]], [grp[0],  cofi[0]], [grp[0],  coga[0]], [grp[0],  grm[0]], [grp[0],  grp[0]]],
  ], [
    [ [ct[0], ct[0]], [ct[0], ch[0]], [ct[0], oi[0]], [ct[0], gr[0]], [ct[0], wo[0]], [ct[0], ou[0]], [ct[0], pr[0]], [ct[0], po[0]] ],
    [ [ch[0], ct[0]], [ch[0], ch[0]], [ch[0], oi[0]], [ch[0], gr[0]], [ch[0], wo[0]], [ch[0], ou[0]], [ch[0], pr[0]], [ch[0], po[0]] ],
    [ [oi[0], ct[0]], [oi[0], ch[0]], [oi[0], oi[0]], [pi[0], gr[0]], [oi[0], wo[0]], [oi[0], ou[0]], [oi[0], pr[0]], [oi[0], po[0]] ],
    [ [gr[0], ct[0]], [gr[0], ch[0]], [gr[0], oi[0]], [gr[0], gr[0]], [gr[0], wo[0]], [gr[0], ou[0]], [gr[0], pr[0]], [gr[0], po[0]] ],
    [ [ou[0], ct[0]], [ou[0], ch[0]], [ou[0], oi[0]], [ou[0], gr[0]], [ou[0], wo[0]], [ou[0], ou[0]], [ou[0], pr[0]], [ou[0], po[0]] ],
    [ [wo[0], ct[0]], [wo[0], ch[0]], [wo[0], oi[0]], [wo[0], gr[0]], [wo[0], wo[0]], [wo[0], ou[0]], [wo[0], pr[0]], [wo[0], po[0]] ],
    [ [pr[0], ct[0]], [pr[0], ch[0]], [pr[0], oi[0]], [pr[0], gr[0]], [pr[0], wo[0]], [pr[0], ou[0]], [pr[0], pr[0]], [pr[0], po[0]] ],
    [ [po[0], ct[0]], [po[0], ch[0]], [po[0], oi[0]], [po[0], gr[0]], [po[0], wo[0]], [po[0], ou[0]], [po[0], pr[0]], [po[0], po[0]] ],
    [ [pi[0], ct[0]], [pi[0], ch[0]], [pi[0], oi[0]], [pi[0], gr[0]], [pi[0], wo[0]], [pi[0], ou[0]], [pi[0], pr[0]], [pi[0], po[0]] ],
  ], [
    [[m[0], m[0]], [m[0], c[0]], [m[0], e[0]]],
    [[c[0], m[0]], [c[0], c[0]], [c[0], e[0]]],
    [[e[0], m[0]], [e[0], c[0]], [e[0], e[0]]],
  ], [
    [[oju, oju], [oju, neo]],
    [[neo, oju], [neo, neo]],
  ]
], [
  [
    [[ho[1],   ho[1]], [ho[1],   fe[1]], [ho[1],   fi[1]], [ho[1],   ga[1]], [ho[1],   ta[1]], [ho[1],   oj[1]], [ho[1],   cofi[1]], [ho[1],   coga[1]], [ho[1],   grm[1]], [ho[1],   grp[1]]],
    [[fe[1],   ho[1]], [fe[1],   fe[1]], [fe[1],   fi[1]], [fe[1],   ga[1]], [fe[1],   ta[1]], [fe[1],   oj[1]], [fe[1],   cofi[1]], [fe[1],   coga[1]], [fe[1],   grm[1]], [fe[1],   grp[1]]],
    [[fi[1],   ho[1]], [fi[1],   fe[1]], [fi[1],   fi[1]], [fi[1],   ga[1]], [fi[1],   ta[1]], [fi[1],   oj[1]], [fi[1],   cofi[1]], [fi[1],   coga[1]], [fi[1],   grm[1]], [fi[1],   grp[1]]],
    [[ga[1],   ho[1]], [ga[1],   fe[1]], [ga[1],   fi[1]], [ga[1],   ga[1]], [ga[1],   ta[1]], [ga[1],   oj[1]], [ga[1],   cofi[1]], [ga[1],   coga[1]], [ga[1],   grm[1]], [ga[1],   grp[1]]],
    [[ta[1],   ho[1]], [ta[1],   fe[1]], [ta[1],   fi[1]], [ta[1],   ga[1]], [ta[1],   ta[1]], [ta[1],   oj[1]], [ta[1],   cofi[1]], [ta[1],   coga[1]], [ta[1],   grm[1]], [ta[1],   grp[1]]],
    [[oj[1],   ho[1]], [oj[1],   fe[1]], [oj[1],   fi[1]], [oj[1],   ga[1]], [oj[1],   ta[1]], [oj[1],   oj[1]], [oj[1],   cofi[1]], [oj[1],   coga[1]], [oj[1],   grm[1]], [oj[1],   grp[1]]],
    [[cofi[1], ho[1]], [cofi[1], fe[1]], [cofi[1], fi[1]], [cofi[1], ga[1]], [cofi[1], ta[1]], [cofi[1], oj[1]], [cofi[1], cofi[1]], [cofi[1], coga[1]], [cofi[1], grm[1]], [cofi[1], grp[1]]],
    [[coga[1], ho[1]], [coga[1], fe[1]], [coga[1], fi[1]], [coga[1], ga[1]], [coga[1], ta[1]], [coga[1], oj[1]], [coga[1], cofi[1]], [coga[1], coga[1]], [coga[1], grm[1]], [coga[1], grp[1]]],
    [[grm[1],  ho[1]], [grm[1],  fe[1]], [grm[1],  fi[1]], [grm[1],  ga[1]], [grm[1],  ta[1]], [grm[1],  oj[1]], [grm[1],  cofi[1]], [grm[1],  coga[1]], [grm[1],  grm[1]], [grm[1],  grp[1]]],
    [[grp[1],  ho[1]], [grp[1],  fe[1]], [grp[1],  fi[1]], [grp[1],  ga[1]], [grp[1],  ta[1]], [grp[1],  oj[1]], [grp[1],  cofi[1]], [grp[1],  coga[1]], [grp[1],  grm[1]], [grp[1],  grp[1]]],
  ], [
    [ [ct[1], ct[1]], [ct[1], ch[1]], [ct[1], oi[1]], [ct[1], gr[1]], [ct[1], wo[1]], [ct[1], ou[1]], [ct[1], pr[1]], [ct[1], po[1]] ],
    [ [ch[1], ct[1]], [ch[1], ch[1]], [ch[1], oi[1]], [ch[1], gr[1]], [ch[1], wo[1]], [ch[1], ou[1]], [ch[1], pr[1]], [ch[1], po[1]] ],
    [ [oi[1], ct[1]], [oi[1], ch[1]], [oi[1], oi[1]], [pi[1], gr[1]], [oi[1], wo[1]], [oi[1], ou[1]], [oi[1], pr[1]], [oi[1], po[1]] ],
    [ [gr[1], ct[1]], [gr[1], ch[1]], [gr[1], oi[1]], [gr[1], gr[1]], [gr[1], wo[1]], [gr[1], ou[1]], [gr[1], pr[1]], [gr[1], po[1]] ],
    [ [ou[1], ct[1]], [ou[1], ch[1]], [ou[1], oi[1]], [ou[1], gr[1]], [ou[1], wo[1]], [ou[1], ou[1]], [ou[1], pr[1]], [ou[1], po[1]] ],
    [ [wo[1], ct[1]], [wo[1], ch[1]], [wo[1], oi[1]], [wo[1], gr[1]], [wo[1], wo[1]], [wo[1], ou[1]], [wo[1], pr[1]], [wo[1], po[1]] ],
    [ [pr[1], ct[1]], [pr[1], ch[1]], [pr[1], oi[1]], [pr[1], gr[1]], [pr[1], wo[1]], [pr[1], ou[1]], [pr[1], pr[1]], [pr[1], po[1]] ],
    [ [po[1], ct[1]], [po[1], ch[1]], [po[1], oi[1]], [po[1], gr[1]], [po[1], wo[1]], [po[1], ou[1]], [po[1], pr[1]], [po[1], po[1]] ],
    [ [pi[1], ct[1]], [pi[1], ch[1]], [pi[1], oi[1]], [pi[1], gr[1]], [pi[1], wo[1]], [pi[1], ou[1]], [pi[1], pr[1]], [pi[1], po[1]] ],
  ], [
    [[m[1], m[1]], [m[1], c[1]], [m[1], e[1]]],
    [[c[1], m[1]], [c[1], c[1]], [c[1], e[1]]],
    [[e[1], m[1]], [e[1], c[1]], [e[1], e[1]]],
  ], [
    [[oju, oju], [oju, neo]],
    [[neo, oju], [neo, neo]],
  ]
]

context_window = [0, 1, 2, 3]
cur_con        = context_window.sample

if    cur_con == 0
  row_options    = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  col_options    = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  arr_options    = [0, 1]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample

  current_nouns = sanity_window[1][cur_con][cur_row][cur_col][cur_arr]


elsif cur_con == 1
  row_options    = [0, 1, 2, 3, 4, 5, 6, 7]
  col_options    = [0, 1, 2, 3, 4, 5, 6, 7]
  arr_options    = [0, 1]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample

  current_nouns = sanity_window[1][cur_con][cur_row][cur_col][cur_arr]

elsif cur_con == 2
  row_options    = [0, 1, 2]
  col_options    = [0, 1, 2]
  arr_options    = [0, 1]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample

  current_nouns = sanity_window[1][cur_con][cur_row][cur_col][cur_arr]

elsif cur_con == 3
  row_options    = [0, 1]
  col_options    = [0, 1]
  arr_options    = [0, 1]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample

  current_nouns = sanity_window[1][cur_con][cur_row][cur_col][cur_arr]

end


puts "#{current_nouns}"
