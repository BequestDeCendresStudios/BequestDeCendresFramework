system("clear")

def generate_catecombs
  system("clear")

  7.times do

  horizontal_walls = [

    "TTT.TTTTT.TTT             TTT<TTTTT>TTT",
    "TTT.TTTTT.TTT             TTT>TTTTT<TTT",
    "TTT<TTTTT>TTT             TTT.TTTTT.TTT",
    "TTT>TTTTT<TTT             TTT.TTTTT.TTT",
    "TTT<TTTTT.TTT             TTT<TTTTT.TTT",
    "TTT.TTTTT<TTT             TTT.TTTTT<TTT",
    "TTT>TTTTT.TTT             TTT>TTTTT.TTT",
    "TTT.TTTTT>TTT             TTT.TTTTT>TTT",
  ]

  verticle_walls   = [
    "T...........T             T...........T",
    "T...........T             T...........T",
    "T...........T             T...........T",
    "T...........T             T...........T",
    "T...........T             T...........T",
    "T...........T             T...........T",
    "T...........T             T...........T",
    "T...........T             T...........T",
    "T...........T             T...........T",
    "T...........T             T...........T",
    "T...........T             T...........T",
    "T...........T             T...........T",
    "T...........T             T...........T",
    "T...........GxxxxxxxxxxxxxG...........T",
    "T...........GxxxxxxxxxxxxxG...........T",
    "T...........GxxxxxxxxxxxxxG...........T",
    "T...........GxxxxxxxxxxxxxG...........T",
    "T...........GxxxxxxxxxxxxxG...........T",
    "T...........GxxxxxxxxxxxxxG...........T",
  ]

  possible_spacings = [
    "   ",
    "     ",
    "       ",
    "         ",
    "           ",
    "             ",
    "               ",
    "                 ",
    "                   ",
    "                     ",
  ]

  spacing_to_tile_spacing = {
    "   "                   => 3,
    "     "                 => 5,
    "       "               => 7,
    "         "             => 9,
    "           "           => 11,
    "             "         => 13,
    "               "       => 15,
    "                 "     => 17,
    "                   "   => 19,
    "                     " => 21,
  }

  chosen_spacing    = possible_spacings.sample
  #$tile_spacing      = spacing_to_tile_spacing["#{chosen_spacing}"] # * 16

  print chosen_spacing

  puts horizontal_walls.sample

  5.times do
    print chosen_spacing
    puts verticle_walls.sample
  end

  print chosen_spacing
  puts horizontal_walls.sample

  puts ""

  end

  #puts "For tile of 16x16, this tile spacing is #{$tile_spacing * 16} pixels, or #{$tile_spacing} ASCII spacing."
end

def generate_forest
  system("clear")

  7.times do

  horizontal_walls = [

    "QQQ.QQQQQ.QQQ             QQQ<QQQQQ>QQQ",
    "QQQ.QQQQQ.QQQ             QQQ>QQQQQ<QQQ",
    "QQQ<QQQQQ>QQQ             QQQ.QQQQQ.QQQ",
    "QQQ>QQQQQ<QQQ             QQQ.QQQQQ.QQQ",
    "QQQ<QQQQQ.QQQ             QQQ<QQQQQ.QQQ",
    "QQQ.QQQQQ<QQQ             QQQ.QQQQQ<QQQ",
    "QQQ>QQQQQ.QQQ             QQQ>QQQQQ.QQQ",
    "QQQ.QQQQQ>QQQ             QQQ.QQQQQ>QQQ",
  ]

  verticle_walls   = [
    "Q...........Q             Q...........Q",
    "Q...........Q             Q...........Q",
    "Q...........Q             Q...........Q",
    "Q...........Q             Q...........Q",
    "Q...........Q             Q...........Q",
    "Q...........Q             Q...........Q",
    "Q...........Q             Q...........Q",
    "Q...........Q             Q...........Q",
    "Q...........Q             Q...........Q",
    "Q...........Q             Q...........Q",
    "Q...........Q             Q...........Q",
    "Q...........Q             Q...........Q",
    "Q...........Q             Q...........Q",
    "Q...........GxxxxxxxxxxxxxG...........Q",
    "Q...........GxxxxxxxxxxxxxG...........Q",
    "Q...........GxxxxxxxxxxxxxG...........Q",
    "Q...........GxxxxxxxxxxxxxG...........Q",
    "Q...........GxxxxxxxxxxxxxG...........Q",
    "Q...........GxxxxxxxxxxxxxG...........Q",
  ]

  possible_spacings = [
    "   ",
    "     ",
    "       ",
    "         ",
    "           ",
    "             ",
    "               ",
    "                 ",
    "                   ",
    "                     ",
  ]

  spacing_to_tile_spacing = {
    "   "                   => 3,
    "     "                 => 5,
    "       "               => 7,
    "         "             => 9,
    "           "           => 11,
    "             "         => 13,
    "               "       => 15,
    "                 "     => 17,
    "                   "   => 19,
    "                     " => 21,
  }

  chosen_spacing    = possible_spacings.sample
  #$tile_spacing      = spacing_to_tile_spacing["#{chosen_spacing}"] # * 16

  print chosen_spacing

  puts horizontal_walls.sample

  5.times do
    print chosen_spacing
    puts verticle_walls.sample
  end

  print chosen_spacing
  puts horizontal_walls.sample

  puts ""

  end

  #puts "For tile of 16x16, this tile spacing is #{$tile_spacing} pixels."
end

def generate_cavern
  system("clear")

  7.times do

  horizontal_walls = [

    "VVV.VVVVV.VVV             VVV<VVVVV>VVV",
    "VVV.VVVVV.VVV             VVV>VVVVV<VVV",
    "VVV<VVVVV>VVV             VVV.VVVVV.VVV",
    "VVV>VVVVV<VVV             VVV.VVVVV.VVV",
    "VVV<VVVVV.VVV             VVV<VVVVV>VVV",
    "VVV.VVVVV<VVV             VVV.VVVVV<VVV",
    "VVV>VVVVV.VVV             VVV>VVVVV.VVV",
    "VVV.VVVVV>VVV             VVV.VVVVV>VVV",
  ]

  verticle_walls   = [
    "V...........V             V...........V",
    "V...........V             V...........V",
    "V...........V             V...........V",
    "V...........V             V...........V",
    "V...........V             V...........V",
    "V...........V             V...........V",
    "V...........V             V...........V",
    "V...........V             V...........V",
    "V...........V             V...........V",
    "V...........V             V...........V",
    "V...........V             V...........V",
    "V...........V             V...........V",
    "V...........V             V...........V",
    "V...........GxxxxxxxxxxxxxG...........V",
    "V...........GxxxxxxxxxxxxxG...........V",
    "V...........GxxxxxxxxxxxxxG...........V",
    "V...........GxxxxxxxxxxxxxG...........V",
    "V...........GxxxxxxxxxxxxxG...........V",
    "V...........GxxxxxxxxxxxxxG...........V",
  ]

  possible_spacings = [
    "   ",
    "     ",
    "       ",
    "         ",
    "           ",
    "             ",
    "               ",
    "                 ",
    "                   ",
    "                     ",
  ]

  spacing_to_tile_spacing = {
    "   "                   => 3,  # 48  pixels spaced.
    "     "                 => 5,  # 80  pixels spaced.
    "       "               => 7,  # 112 pixels spaced.
    "         "             => 9,  # 144 pixels spaced.
    "           "           => 11, # 176 pixels spaced.
    "             "         => 13, # 208 pixels spaced. Cutting point for Gosu.
    "               "       => 15, # 240 pixels spaced.
    "                 "     => 17, # 272 pixels spaced.
    "                   "   => 19, # 304 pixels spaced.
    "                     " => 21, # 336 pixels spaced.
  }

  chosen_spacing    = possible_spacings.sample
  #$tile_spacing      = spacing_to_tile_spacing["#{chosen_spacing}"] #* 16

  print chosen_spacing

  puts horizontal_walls.sample

  5.times do
    print chosen_spacing
    puts verticle_walls.sample
  end

  print chosen_spacing
  puts horizontal_walls.sample

  puts ""

  end

  #puts "For tile of 16x16, this tile spacing is #{$tile_spacing * 16} pixels, or #{$tile_spacing} ASCII spacing."
end

def generate_tombekashi
  system("clear")

  7.times do

  horizontal_walls = [

    "KKK.KKKKK.KKK             KKK<KKKKK>KKK",
    "KKK.KKKKK.KKK             KKK>KKKKK<KKK",
    "KKK<KKKKK>KKK             KKK.KKKKK.KKK",
    "KKK>KKKKK<KKK             KKK.KKKKK.KKK",
    "KKK<KKKKK.KKK             KKK<KKKKK.KKK",
    "KKK.KKKKK<KKK             KKK.KKKKK<KKK",
    "KKK>KKKKK.KKK             KKK>KKKKK.KKK",
    "KKK.KKKKK<KKK             KKK.KKKKK>KKK",
  ]

  verticle_walls   = [
    "K...........K             K...........K",
    "K...........K             K...........K",
    "K...........K             K...........K",
    "K...........K             K...........K",
    "K...........K             K...........K",
    "K...........K             K...........K",
    "K...........K             K...........K",
    "K...........K             K...........K",
    "K...........K             K...........K",
    "K...........K             K...........K",
    "K...........K             K...........K",
    "K...........K             K...........K",
    "K...........K             K...........K",
    "K{=}........GxxxxxxxxxxxxxG........{=}K",
    "K..{=}......GxxxxxxxxxxxxxG......{=}..K",
    "K....{=}....GxxxxxxxxxxxxxG....{=}....K",
    "K......{=}..GxxxxxxxxxxxxxG..{=}......K",
    "K........{=}GxxxxxxxxxxxxxG{=}........K",
    "K...........GxxxxxxxxxxxxxG...........K",
  ]

  possible_spacings = [
    "   ",
    "     ",
    "       ",
    "         ",
    "           ",
    "             ",
    "               ",
    "                 ",
    "                   ",
    "                     ",
  ]

  spacing_to_tile_spacing = {
    "   "                   => 3,
    "     "                 => 5,
    "       "               => 7,
    "         "             => 9,
    "           "           => 11,
    "             "         => 13,
    "               "       => 15,
    "                 "     => 17,
    "                   "   => 19,
    "                     " => 21,
  }

  chosen_spacing    = possible_spacings.sample
  #$tile_spacing      = spacing_to_tile_spacing["#{chosen_spacing}"] #* 16

  print chosen_spacing

  puts horizontal_walls.sample

  5.times do
    print chosen_spacing
    puts verticle_walls.sample
  end

  print chosen_spacing
  puts horizontal_walls.sample

  puts ""

  end

  #puts "For tile of 16x16, this tile spacing is #{$tile_spacing * 16} pixels, or #{$tile_spacing} in ASCII spacing."
end

starting_dungeon = [
  generate_catecombs,
  generate_forest,
  generate_cavern,
  generate_tombekashi
]

starting_dungeon.sample

room_number = [
  1, 2, 3, 4, 5,
  6, 7, 8, 9, 10,
  11, 12, 13, 14
]

puts "Your starting room number is: #{room_number.sample}"
