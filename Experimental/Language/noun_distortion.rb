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
