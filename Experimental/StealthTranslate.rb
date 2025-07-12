StealthTranslate::Conlang.

module StealthTranslate
  class Conlang
    def self.conversion
      translations = {
        ## Word Classes

        ## Francophonic
        "Le"  => "The ( Masculine ) [ Francophonic ]",
        "La"  =>  "The ( Feminine ) [ Francophonic ]",
        "Les" =>    "The ( Plural ) [ Francophonic ]",
        "Un"  =>                 "A [ Francophonic ]",
        "Une" =>                "An [ Francophonic ]",
        "Des" =>              "Some [ Francophonic ]",

        ## Japonic
        "Anu"  => "The ( Masculine ) [ Pseudo-Japonic ]",
        "Ana"  =>  "The ( Feminine ) [ Pseudo-Japonic ]",
        "Anos" =>    "The ( Plural ) [ Pseudo-Japonic ]",
        "Tu"   =>                 "A [ Pseudo-Japonic ]",
        "Ta"   =>                "An [ Pseudo-Japonic ]",
        "Tos"  =>             "Some [ Pseudo-Japaonic ]",

        ## German By Route Of Alsatian
        "Der" => "The ( Masculine ) [ Germanic ]",
        "Die" =>  "The ( Feminine ) [ Germanic ]",
        "Das" =>    "The ( Plural ) [ Germanic ]",
        "A"   =>                 "A [ Germanic ]",
        "Ein" =>                "An [ Germanic ]",

        ## Compound Word Specific Word Classes
        "Lanu"  => "The ( masculine ) [ Ahusacos Specific ]",
        "Lana"  =>  "The ( feminine ) [ Ahusacos Specific ]",
        "Lanos" =>    "The ( plural ) [ Ahusacos Specific ]",
        "Tun"   =>                 "A [ Ahusacos Specific ]",
        "Tan"   =>                "An [ Ahusacos Specific ]",
        "Deso"  =>         "It / Some [ Ahusacos Specific ]",

        ## Negation Clauses
        "Ne"   => "Not [ Francophonic ]",
        "Na"   =>      "Not [ Japonic ]",
        "Nix " =>       "Not [ Hybrid ]",
        "Nein" =>     "Not [ Germanic ]",

        ## Personal Pronouns
        "Je"        =>       "I",
        "Vous"      => "You all",
        "Toi"       =>     "You",
        "Nous"      =>      "We",
        "Il"        =>      "He",
        "Ils"       =>     "Him",
        "Elle"      =>     "She",
        "Elles"     =>     "Her",

        ## Common Posessives
        "mien"   =>  "mine",
        "votre"  =>  "your",
        "tien"   => "yours",
        "notre"  =>   "our",
        "notres" =>  "ours",
        "sien"   =>   "his",
        "sienne" =>  "hers",

        ## Not used outside of context of military context, used to refer to groups of units.
        ## In practice, right-wing factions use the wrong plural pronoun to misgender entire units
        ## as a way to lower moral of left-wing factions. Because of this, after the Franco-Japanese
        ## Wars, they stopped being used widely.

        ## War Plurals
        "Nousil"    =>  "He plural",
        "Nousils"   => "Him plural",
        "Nouselle"  => "She plural",
        "Nouselles" => "Her plural",

        ## Plural Posessives
        "sienotre"    =>     "our men",
        "sienenotre"  =>   "our women",
        "sienotres"   =>   "our men's",
        "sienenotres" => "our women's",

        ## Famille / Family

        ### Francophonic
        "Pere"       =>        "Father",
        "Mere"       =>        "Mother",
        "Frere"      =>       "Brother",
        "Soeur"      =>        "Sister",
        "Cousifrere" =>   "Male Cousin",
        "Cousisoeur" => "Female Cousin",
        "Cousiles"   =>  "Both Cousins",
        "Tante"      =>          "Aunt",
        "Oncle"      =>         "Uncle",

        "Anu Ea"      => "An airborn",
        "Ana Ea"      => "An airborn",
        "Anos Ea"     => "An airborn",
        "Anu Denki"   => "An electric",
        "Ana Denki"   => "An electric",
        "Anos Denki"  => "An electric",
        "Anu Kaiyo"   => "A recovered",
        "Ana Kaiyo"   => "A recovered",
        "Anos Kaiyo"  => "A recovered",
        "Anu Tsuchi"  => "A heavenly",
        "Ana Tsuchi"  => "A heavenly",
        "Anos Tsuchi" => "A heavenly",
        "Anu Tenchi"  => "An earthen",
        "Ana Tenchi"  => "An earthen",
        "Anos Tenchi" => "An earthen",
        "Anu Shi"     => "A deadly",
        "Ana Shi"     => "A deadly",
        "Anos Shi"    => "A deadly",

        "Homard Au Cochon" => "Lobster in the pig",
        "Tesutosujettos"   => "Test Subject",
        "Ursinehomme"      => "Bear Man",

        "de les corrompue"  => "of corruption.",
        "de le recupere"    => "of recuperation.",
        "de le soufflé"     => "of airblown.",
        "de le carbonise"   => "of charring.",
        "de la noyee"       => "of female drownings.",
        "de le noye"        => "of male drownings.",
        "de le fissure"     => "of Earthquakes.",
        "de les abandonnés" => "of abandonment.",

        ## First section
        "Anos Tsuchi Tesutosujettos de les corrompue"   => "A heavenly test subject subjected to corrupting influences.",
        "Anos Denki Ursinehomme de le carbonise"        => "A bear man with electric and fire magic ability.",
        "Ana Shi Ursinehomme de le recupere"            => "A deadly bear-man recovered from battle.",
        "Ana Tsuchi Homard Au Cochon de le souffle"     => "A monster with a pigs face and a lobster's body whom makes souffles.",

        "Ana Tsuchi Ursinehomme de la noyee"            => "A heavenly bear-man whom drowned at sea.",
        "Anos Ea Ursinehomme de le noye"                => "A once airbone bear-woman whom drowned at sea.",
        "Anos Denki Tesutosujettos de le souffle"       => "A test subject tortured by blowing electrical currents.",
        "Anos Tsuchi Tesutosujettos de la noyee"        => "A drowned test subject from heaven.",
        "Anos Tenchi Homard Au Cochon de la noyee"      => "A lobster pig that's the reincarnated spirit of a drowned privateer with the power of Earth.",
        "Anos Denki Tesutosujettos de les corrompue"    => "A test subject tortured by electric currents subjected to corrupting influences.",
        "Anos Danki Usinehomme de les abandonnes"       => "An abandoned bear-man cub with electric magic abilities.",
        "Anos Tenchi Ursinehomme de les corrompue"      => "A bear-man from heaven subjected to corrupting influences.",
        "Anos Denki Homard Au Cochon de les abandonnes" => "A lobster pig with electric magic powered abandoned as a crawling.",
        "Anos Kaiyo Ursinehomme de le recupere"         => "An aetherial bear-man recovered from a previous battle.",
        "Ana Shi Tesutosujettos de le souffle"          => "A test subject whom died from an explosion.",

        ## Second Section
        "Anos Kaiyo Tesutosujettos de le carbonise"     => "A test subject from heaven whom uses fire magic.",
        "Anos Tenchi Ursinehomme de la noyee"           => "A bear-man controlling Earth magic whom drowned at sea.",
        "Ana Tsuchi Ursinehomme de le noye"             => "A drowned wear-bear from heaven.",
        "Ana Tsuchi Tesutosujettos de le souffle"       => "A heavenly test subject whom controls air magic.",
        "Ana Tsuchi Homard Au Cochon de le noye"        => "A male lobster from the heavens whom drowned in a previous life as a privateer.",
        "Ana Tsuchi Ursinehomme de les abandonnes"      => "A bear man from the heavens abandoned as a cub.",
        "Anos Tenchi Ursinehomme de le fissure"         => "A bear man from heaven whom controls Earthquakes.",
        "Ana Tsuchi Homard Au Cochon de la noyee"       => "A female lobster pig from the heaven whom drowned in a previous life as a privateer.",
        "Ana Tsuchi Tesutosujettos de la noyee"         => "A female test subject from the heavens whom drowned.",

        ## Third Section
        "Anos Tenchi Tesutosujettos de le fissure"      => "A test subject with unknown gender from heaven whom controls Earthquakes.", 
        "Ana Shi Tesutosujettos de le fissure"          => "A deadly test subject whom controls Earthquakes.",
        "Anos Tenchi Tesutosujettos de les corrompue"   => "A test subject whom controls Earth magic subjected to corrupting influences.",
        "Ana Shi Homard Au Cochon de le recupere"       => "A deadly lobster pig whom recovered from a previous battle.",
        "Ana Shi Homard Au Cochon de le noye"           => "A deadly lobster pig whom is the reincarnated spirit of a drowned privateer",
        "Anos Tenchi Tesutosujettos de la noyee"        => "A test subject from the heavens whom drowned at sea,",
        "Anos Kaiyo Ursinehomme de le fissure"          => "An aetherial bear man whom controls Earth quakes.",
        "Ana Tsuchi Tesutosujettos de le fissure"       => "A female test subject from heaven whom controls Earthquakes.",
        "Anos Ea Homard Au Cochon de le fissure"        => "An airborn lobster pig whom controls Earthquakes.",
        "Anoa Shi Ursinehomme de le noyee"              => "A deadly bear man whom drowned at sea.",
        "Anos Ea Usinehomme de la noyee"                => "An airborn bear nab whom drowned at sea,",
        "Anos Denki Homard Au Cochon de le noye"        => "An electrically charged lobster pig whom drowned at sea.",

        ## Standard Portmanteau
        "Ta Basurumusortia"       => "The bathroom exit",
        "Tos Shinkuentros"        => "The sink entrance",
        "Tos Aisubokkusulavos"    => "The icebox bath",
        "Te Shadomangere"         => "The slope biting",
        "Ta Shadoentra"           => "The slope entrance",
        "Te Garejidorme"          => "The garage sleep",
        "Tos Shadodormos"         => "The slope sleep",
        "Ta Shinshitsulavera"     => "The bedroom bath",       # Antiquated, holdover from having tubs in bedrooms in the 19th century.
        "Tos Uindomuros"          => "The window wall",
        "Ta Daidakorodorma"       => "The first time sleep",   # The first time sleeping in a particular area.
        "Tos Iemangeros"          => "The non eating",
        "Tos Uindogouachos"       => "The window paint",       # Historically window paint was designed in such a way to be less permanent so it could be washed off.
        "Te Garejimangere"        => "The dining garage",      # Historically illegal restaurant might be operated out of people's garage to evade authorities.
        "Te Garejigouache"        => "The garage gouache",     # Gouache paint for painting garages needed to be more water proof, and more akin to water mixable oil paint.
        "Tos Garejimerdos"        => "The garage restroom",    # By extension, there needed to be special bathrooms for guests specifically in garages away from the rest of the house.
        "Te Basurumuentre"        => "The bathroom door",      # By extension, a Basurumuentre is another word for bathroom door.
        "Te Shinkuentre"          => "The sink entrance",      # Context, another word for a drainpipe in a sink.
        "Te Rokacanape"           => "The red couch",          # A type of French couch that uses Japanse red cloth over maple.
        "Ta Aisubokkusugouacha"   => "The icebox gouache",     # Painting the outside of an ice box, or the paint used for such activities.
        "Te Rokasortie"           => "The red exit",           # Doors are sometimes painted red, if only staff are meant past that point, or is a danger area.
        "Ta Daidakorogouacha"     => "The first time gouache", # Eluding to the smell of fresh water mixable oil paint.
        "Tos Ribingurumumangeros" => "The dining room",        # Frequently familial dining rooms seperate from the eating area of illegal restaurants in people's garages.
        "Ta Daidakoromangera"     => "The first time eating",  # First time eating at an illegal restaurant.
        "Tos Shinkumerdos"        => "The foul sink smell",    # In informal way of saying the kitchen stinks like fish.
        "Tos Basurumugouachos"    => "The bathroom paint",     # Sometimes bathroom in illegal restaurant would smell like fresh paint do to frequency of repainting walls.
        "Ta Shinkulavera"         => "The sink bath",          # Using the sink as a bath for washing vegetables that go along with seafood.
        "Ta Rokagouache"          => "The red paint",          # A specific variety of water-mixable oil paint with a rust red pigment.
        "Ta Basurumumanger"       => "The bathroom munch",     # An informal way of describing shitting where you eat, or jeapardize something essential. Ex. Ta Basurumumangr vous es.
      "Ta Rokaentre"            => "The red entrance",       # An entrance that's been painted in red, warning not to tresspass for non employees.
      "Ta Uindodorm"            => "The sleepingw window",   # An especially made window for sleeping in.
      "Te Shinkuporte"          => "The sink door",          # The sink door. Another word for a plug for a sink.

      ## Duplicates
      "Te Uindosortie"        => "The window exit",        # Using the open garage door or window as a way to vent out cooking smells in the garage.
      "Ta Uindosortia"        => "The window exit",        # Using the open garage door or window as a way to vent out cooking smells in the garage.
      "Tos Uindosortios"      => "The window exit",        # Using the open garage door or window as a way to vent out cooking smells in the garage.

      ## Negative
      "dekinai"                 => "can not",

      ## Special locations
      "Te Garejimangere Ursinehomme"     => "A shack in a garage known as the Bear-Man's tabern.",
      "Tos Garejimerdos Denkos"          => "The heavenly garage restroom",
      "Anos Shi Rokacanape"              => "The deadly red couch",
      "Anu Shi Rokaentre"                => "The deadly red entrance",
      "Ta Uindodorm de le recupere"      => "The sleeping window patients recover or die in",
      "Tos Aisubokkusulavos de la noyee" => "The ice box a corpse drowned in.",
      "Anos Uindodormos Tenchos"         => "The earthen sleeping window",

      ## Japanese Sirnames
      "Abe"            => "Peace",
      "Ichiji Teishi"  => "Pause",
      "Funso"          => "Conflict",

      "Aikawa"         => "Mutually, Together",
      "Banane Sekando" => "Second Banana",
      "Warui Kotoba"   => "Bad Terms",

      "Akabane"        => "Red Feather",
      "Lotus"          => "Lotus",
      "Buru"           => "Bleu",

      "Akai"           => "Mineshaff",
      "Rengoku"        => "Purgatory",
      "Yoake"          => "Dawn",

      ## French first names
      "Elea"  => "Eleanor",
      "Lya"   => "Weary",
      "Elyna" => "Torch",
      "Anna"  => "Saint Hannah",

      "Adrien"    => "Adrien",
      "Aime"      => "Loved",
      "Alain"     => "Alan ( feminine )",
      "Alexander" => "The Great",

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
    }

    print "Translate << "; translate = gets.chomp.split(" ")

    size_limit = translate.size.to_i
    index      = 0

    size_limit.times do
      translation = translations[translate[index]]

      print translation
      print " "

      index = index + 1
    end

    puts " "
  end
end
