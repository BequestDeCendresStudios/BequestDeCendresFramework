module BequestEncyclopedia
  class Research
    def self.beastiary
      system("clear")

      beasts = File.read("beasts/beasts.txt")

      puts beasts

      available_beasts = [
        "[Cochonbuta]", "[Ursinehomme]",
        "[Ursinepiros]", "[Kumabatto]",
        "[The Quantumcrusafied]",
      ]

      print "\nWhat kind of beast? ( Cochonbuta / Ursinehomme / Ursinepiros / Kumabatto / The Quantumcrusafied ) << "; do_beast = gets.chomp

      if    do_beast ==           "Cochonbuta"; print available_beasts[0]; puts " Combines a lobster and a boar, related to the spider pig."
      elsif do_beast ==          "Ursinehomme"; print available_beasts[1]; puts " Literally translates to bear-man, is the male version of wearbears. Ursinefemme is the female version."
      elsif do_beast ==          "Ursinepiros"; print available_beasts[2]; puts " Literally translates to vampire-bear, is the human version of wearbears that feeds on human's blood."
      elsif do_beast ==            "Kumabatto"; print available_beasts[3]; puts " A condensed version of 'Le Kumabatto De Les Ghoules', is the king of the bear-bat ghouls."
      elsif do_beast == "The Quantumcrusafied"; print available_beasts[4]; puts " The wandering spirits of men punished for quantum treason by quantum crusafiction."
      else
        puts ">> Not such beast exists on land or sea..."
      end

      gets.chomp
    end

    def self.translate
      print "What word would you like to translate? >> "; translate = gets.chomp

      dictionary = {
        ### Color Acidity Framework
        # These colors are for a system that rates colors based on their acidity or alkalinity.

        ##### Reds
        "PH4DR1" => "Salmon",
        "PH5DR1" => "Pale Salmon",
        "PH4DR3" => "Salmon Pink",

        ##### Oranges
        "PH4DR2" => "Copper",
        "PH8WE1" => "Japanese Bistre",

        ##### Yellow
        "PH6DR1" => "Maize",
        "PH5DR2" => "Khaki",
        "PH6DR3" => "Bland",

        ##### Green
        "PH6DR2" =>     "Pale Lime",
        "PH7NU1" => "Vibrant Green",
        "PH7NU2" =>  "Medium Green",
        "PH8WE2" =>   "Kelly Green",

        ##### Blue
        "PH9WE2" =>       "Viridian",
        "PHAWE3" =>    "Ultramarine",
        "PH9WE3" => "Muted Sapphire",
        "PH8WE3" =>  "Dark Sapphire",
        "PH7NU3" =>      "Grey Blue",

        ##### Purple
        "PH9WE1" => "Dull Purple",
        "PH5DR3" => "Light Mauve",

        ##### Unusual Or Rare Color
        "PH1WE3CH1"    => "Dark Lavender", # A theoretical compound that blends Salmon with Sapphire blue.
        "PH4WE2CH2"    =>  "Atomic Hazel", # A highly toxic combination of copper and arsenic.
        "Atomic Hazel" =>       "#6D6C46", # Hex code for atomic hazel.

        ### Chomatic Shades
        ### Arsenic Scale

        ### Unknown Origin
        "PHAWE1"       =>      "Bordeaux", # I don't know how I got this color.'

        ### Hand Mixed Colors
        "#83b281" => "Dusty Green",

        ### Synthesized From Real Colors
        "#A9A8AD" => "Faded Carolina Blue", # Pale Lime, Salmon Pink, Bland, Grey Blue    [ Hypothesis Acidic Blue ]
        "#A0A5B9" => "Manilla Lavender",    # Salmon, Pale Salmon, Grey Blue, Grey Blue   [ Hypothesis Slightly Alkaline Grey Blue ]
        "#8cc874" => "Asparagus",           # Pale Lime, Maize, Light Mauve, Medium Green [ Hypothesis Alkaline Green ]
        "#a0b36c" => "Tan Green",           # Pale Salmon, Kelly Green, Bland, Khaki      [ Hypothesis Slightly Tan Green ]
        "#5673A9" => "Dusky Blue",          # Grey Blue, Light Mauve, Khaki, Sapphire     [ Hypothesis Highly Alkaline Blue ]
        "#A59C94" => "Warm Grey",           # Vibrant Green, Salmon, Sapphire Dark, Bland [ Hypothesis Slightly Acidic Grey ]

        ### Synthesized From Synthetic Colors
        "#788a9a" => "Steel",               # Faded Carolina Blue, Tan Green, Warm Grey, Dusky Blue [ Hypothesis Slightly Alkaline Medium Chromatic Blue ]
        "#415588" => "Dusky Blue Medium"    # Genetically related to standard Dusky blue. Faded Carolina Blue, Tan Green, Warm Grey, Dusky Blue [ Hypothesis More Shaded Alkaline Blue ]
      }

      print "Your translation: "
      print "#{translate} => #{dictionary[translate]}"

      gets.chomp
    end

    def self.detect_poison
      color_data = File.read("translation/input.txt").strip.to_s

      ## Natural colors
      if    color_data ==          "Salmon";  sleep(1.5); system("./salmonbasic.sh")
      elsif color_data ==     "Pale Salmon";  sleep(1.5); system("./palesalmon.sh")
      elsif color_data ==     "Salmon Pink";  sleep(1.5); system("./salmonpink.sh")
      elsif color_data ==          "Copper";  sleep(1.5); system("./cooper.sh")
      elsif color_data == "Japanese Bistre";  sleep(1.5); system("./japanesebistre.sh")
      elsif color_data ==           "Maize";  sleep(1.5); system("./maize.sh")
      elsif color_data ==           "Khaki";  sleep(1.5); system("./khaki.sh")
      elsif color_data ==           "Bland";  sleep(1.5); system("./bland.sh")
      elsif color_data ==       "Pale Lime";  sleep(1.5); system("./palelime.sh")
      elsif color_data ==   "Vibrant Green";  sleep(1.5); system("./vibrantgreen.sh")
      elsif color_data ==    "Medium Green";  sleep(1.5); system("./mediuemgreen.sh")
      elsif color_data ==     "Kelly Green";  sleep(1.5); system("./kellygreen.sh")
      elsif color_data ==        "Viridian";  sleep(1.5); system("./viridian.sh")
      elsif color_data ==     "Ultramarine";  sleep(1.5); system("./ultramarine.sh")
      elsif color_data ==  "Muted Sapphire";  sleep(1.5); system("./mutedsapphire.sh")
      elsif color_data ==   "Dark Sapphire";  sleep(1.5); system("./darksapphire.sh")
      elsif color_data ==       "Grey Blue";  sleep(1.5); system("./greyblue.sh")
      elsif color_data ==     "Dull Purple";  sleep(1.5); system("./dullpurple.sh")
      elsif color_data ==     "Light Mauve";  sleep(1.5); system("./lightmauve.sh")
      elsif color_data ==   "Dark Lavender";  sleep(1.5); system("./darklavender.sh")
      elsif color_data ==    "Atomic Hazel";  sleep(1.5); system("./atomichazel.sh")

      ## Synthesized Colors
      elsif color_data == "Faded Carolina Blue"; sleep(1.5); system("./fadedcarolinablue.sh")
      elsif color_data == "Dusky Blue";          sleep(1.5); system("./duskyblue.sh")

      ## Double Processed Synthesized Colors

      else
        sleep(1.5)

        puts ">> Either that's not a color, or no color information has yet been found."
      end
    end
  end
end
