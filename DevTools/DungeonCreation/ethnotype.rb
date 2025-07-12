# # is a French fortress wall
# | is a Japanese dojo wall.
# + Is a Dojo wall connector.
# . Is standard floor tile.
# x Is a woven matt tile. 
# = Is a sldiing glass door.
# * Pathway

def japanese_dojo
  system("clear")

  starting_room         = [1, 2, 3, 4, 5, 6, 7]
  active_room_count     = starting_room.size.to_i
  current_starting_room = starting_room.sample

  active_room_count.times do
    possible_wall_types = [
      "|", "G"
    ]

    possible_horizontal_walls = [
      "+-----+       +=+=+=+", "+=+=+=+       +-----+",
      "+=+=+=+       +-----+", "+-----+       +=+=+=+",
      "=+=+=+=       +=+=+=+", "+=+=+=+       =+=+=+=",
      "+=+=+=+       =+=+=+=", "=+=+=+=       +=+-+=+",
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

    current_spacing = possible_spacings.sample

    wall_type_1 = possible_horizontal_walls.sample #.strip
    wall_type_2 = possible_horizontal_walls.sample #.strip
    wall_type_3 = possible_horizontal_walls.sample #.strip
    wall_type_4 = possible_horizontal_walls.sample #.strip
    wall_type_5 = possible_horizontal_walls.sample #.strip
    wall_type_6 = possible_horizontal_walls.sample #.strip
    wall_type_7 = possible_horizontal_walls.sample #.strip

    horizontal_walls = [
      wall_type_1, wall_type_2, wall_type_3,
      wall_type_4, wall_type_5, wall_type_6,
      wall_type_7
    ]

    #vertical_walls = possible_wall_types.sample

    active_horizontal_wall = horizontal_walls.sample.strip

    #active_vertical_wall   = vertical_walls

    #possible_floor_hazards = [
      #".xxx.", ".xSx.",
      #".SxS.", ".&x&.",
      #".x&x.",
    #]

    #current_floor_hazards = possible_floor_hazards.sample

    possible_pathways = [
      "       ",
      "*******",
    ]

    puts current_spacing + active_horizontal_wall

    puts current_spacing + possible_wall_types.sample + ".xxx." + possible_wall_types.sample + possible_pathways.sample + possible_wall_types.sample + ".xxx." + possible_wall_types.sample

    puts current_spacing + possible_wall_types.sample + ".xxx." + possible_wall_types.sample + possible_pathways.sample + possible_wall_types.sample + ".xxx." + possible_wall_types.sample

    puts current_spacing + possible_wall_types.sample + ".xxx." + possible_wall_types.sample + possible_pathways.sample + possible_wall_types.sample + ".xxx." + possible_wall_types.sample

    puts current_spacing + possible_wall_types.sample + ".xxx." + possible_wall_types.sample + possible_pathways.sample + possible_wall_types.sample + ".xxx." + possible_wall_types.sample

    puts current_spacing + possible_wall_types.sample + ".xxx." + possible_wall_types.sample + possible_pathways.sample + possible_wall_types.sample + ".xxx." + possible_wall_types.sample

    puts current_spacing + active_horizontal_wall

    puts " "
  end

  puts "Your hotel room is number #{current_starting_room}."
end

def french_fortress
  system("clear")

  starting_room         = [1, 2, 3, 4, 5, 6, 7]
  active_room_count     = starting_room.size.to_i
  current_starting_room = starting_room.sample

  active_room_count.times do
    possible_wall_types = [
      "#", "G"
    ]

    possible_horizontal_walls = [
      "#######       #.###.#", "#.###.#       #######",
      "#.#.#.#       #.#.#.#", "#.#.#.#       #.#.#.#",
      ".#.#.#.       .#.#.#.", ".#.#.#.       .#.#.#.",
      "#.###.#       #######", "#######       #.###.#",
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

    current_spacing = possible_spacings.sample

    wall_type_1 = possible_horizontal_walls.sample #.strip
    wall_type_2 = possible_horizontal_walls.sample #.strip
    wall_type_3 = possible_horizontal_walls.sample #.strip
    wall_type_4 = possible_horizontal_walls.sample #.strip
    wall_type_5 = possible_horizontal_walls.sample #.strip
    wall_type_6 = possible_horizontal_walls.sample #.strip
    wall_type_7 = possible_horizontal_walls.sample #.strip

    horizontal_walls = [
      wall_type_1, wall_type_2, wall_type_3,
      wall_type_4, wall_type_5, wall_type_6,
      wall_type_7
    ]

    #vertical_walls = possible_wall_types.sample

    active_horizontal_wall = horizontal_walls.sample.strip

    #active_vertical_wall   = vertical_walls

    #possible_floor_hazards = [
      #".xxx.", ".xSx.",
      #".SxS.", ".&x&.",
      #".x&x.",
    #]

    #current_floor_hazards = possible_floor_hazards.sample

    possible_pathways = [
      "       ",
      "*******",
    ]

    puts current_spacing + active_horizontal_wall

    puts current_spacing + possible_wall_types.sample + "....." + possible_wall_types.sample + possible_pathways.sample + possible_wall_types.sample + "....." + possible_wall_types.sample

    puts current_spacing + possible_wall_types.sample + "....." + possible_wall_types.sample + possible_pathways.sample + possible_wall_types.sample + "....." + possible_wall_types.sample

    puts current_spacing + possible_wall_types.sample + "....." + possible_wall_types.sample + possible_pathways.sample + possible_wall_types.sample + "....." + possible_wall_types.sample

    puts current_spacing + possible_wall_types.sample + "....." + possible_wall_types.sample + possible_pathways.sample + possible_wall_types.sample + "....." + possible_wall_types.sample

    puts current_spacing + possible_wall_types.sample + "....." + possible_wall_types.sample + possible_pathways.sample + possible_wall_types.sample + "....." + possible_wall_types.sample

    puts current_spacing + active_horizontal_wall

    puts " "
  end

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

  current_spacing = possible_spacings.sample

  print current_spacing; puts "          =          "
  print current_spacing; puts "        __=__        "
  print current_spacing; puts "       [_ _ _]       "
  print current_spacing; puts "        ||=||        "
  print current_spacing; puts "========||=||========"
  print current_spacing; puts "        =====        "

  puts "Your hotel room is number #{current_starting_room}."
end

ethno_type = [japanese_dojo, french_fortress]

ethno_type.sample
