def player_diety
  if    @player_diety ==       "dakupreiste"; StealthDietiesPlayer::Worship.dakupreiste
  elsif @player_diety ==    "mort naussance"; StealthDietiesPlayer::Worship.mort_naussance
  elsif @player_diety == "bourreau de karma"; StealthDietiesPlayer::Worship.bourreau_de_karma
  elsif @player_diety ==     "horyo de noir"; StealthDietiesPlayer::Worship.horyo_de_noir
  else
    StealthDietiesPlayer::Worship.bourreau_de_karma
  end
end

def enemy_diety
  if    @enemy_diety ==       "dakupreiste"; StealthDietiesEnemy::Worship.dakupreiste
  elsif @enemy_diety ==    "mort naussance"; StealthDietiesEnemy::Worship.mort_naussance
  elsif @enemy_diety == "bourreau de karma"; StealthDietiesEnemy::Worship.bourreau_de_karma
  elsif @enemy_diety ==     "horyo de noir"; StealthDietiesEnemy::Worship.horyo_de_noir
  else
    StealthDietiesEnemy::Worship.bourreau_de_karma
  end
end

def player_action
end

def enemy_action
end

def player_movement
end

def enemy_movement
end

def player_magic
end

def enemy_magic
end

## Nested Gamestates for different functionalities.
gamestates = {
  "matraque"       =>               "sekupu", # Transfers between bludgeon and scoop.
  "sekupu"         =>               "wurgen", # Transfers between scoop and strangle.
  "wurgen"         =>          "raittosalle", # Transfers between strangle and flashlight.
  "raitosalle"     =>         "trouvertsuru", # Transfers between flashlight and find tools.
  "trouvertsuru"   =>       "busokaijoplege", # Transfers between find tools and trap disarming.
  "busokaijpplege" =>         "morsurenekku", # Transfers between trap disarming and neck biting ( vampirism ).
  "morsurenekku"   =>       "araignée shiki", # Transfers between neck biting and bludgeons.
  "araignée shiki" =>             "matraque", # Transfers between spider instructing back to original command.
}, {
  "elan"           =>        "flaner",
  "flaner"         => "coup de grace",
  "coupe de grace" =>         "parle",
}, {
  "flotteur"              =>                 "noyee",
  "noyee"                 => "tempête de poussieres",
  "tempête de poussières" =>             "dokubutsu",
  "dokubutsu"             =>                "oshoko",
  "oshoko"                =>                  "void",
  "void"                  =>                  "habu",
  "habu"                  =>                "yunion",
  "yunion"                =>              "flotteur",
}, {
  "viola matraque" =>  "void matraque",
  "void matraque"  => "viola matraque",
}, {
  "Kanri Sha De Domaine" =>   "Domaine De Cendres",
  "Domaine De Cendres"   => "Kanri Sha De Domaine",
}, {
  "Cercueil De Cendres"    => "Ne Cercueil De Cendres",
  "Ne Cercueil De Cendres" =>    "Cercueil De Cendres",
}, {
  "dakupreiste"       =>    "mort-naissance",
  "mort-naissance"    => "bourreau de karma",
  "bourreau de karma" =>     "horyo de noir",
  "horyo de noir"     =>       "dakupreiste",
}

# Relevant gamestates.
actions       = gamestates[0]
movement      = gamestates[1]
magic         = gamestates[2]
music         = gamestates[3]
funeral_staff = gamestates[4]
cremation     = gamestates[5]
dieties       = gamestates[6]

## Dieties
enemy_dieties = ["dakupreiste", "mort-naissance", "bourreau de karma", "horyo de noir"]

## Enemy related actions
enemy_actions = [
  "matraque",             "sekupu",         "wurgen",
  "raitosalle",     "trouvertsuru", "busokaijoplege",
  "morsurenekku", "araignee shiki"
]

enemy_movements = [
  "elan", "flaner", "coupe de grace"
]

enemy_magic = [
  "flotteur",   "noyee", "tempête de poussieres",
  "dokubutsu", "oshoko",                  "void",
  "habu",      "yunion"
]

## Other elements that rewrite game state.
violin_state_conflict = ["viola matraque", "void matraque"]

npc_interaction = [
  "Kanri Sha De Domaine",
  "Domaine De Cendres",
]

## Relevant mostly to zombie state.
ash_basket = [
  "Cercueil De Cendres",
  "Ne Cercueil De Cendres",
]

## Current enemy behaviours chosen
current_enemy_dieties   =   enemy_dieties.sample
current_enemy_action    =   enemy_actions.sample
current_enemy_movements = enemy_movements.sample
current_enemy_magic     =     enemy_magic.sample

@cchoices = [
  current_enemy_dieities,
  current_enemy_action,
  current_enemy_movements,
  current_enemy_magic
]

puts "DIETY, ACTION, MOVEMENT"

print "What diety?    > ";    @player_diety = gets.chomp
print "What action?   > ";   @player_action = gets.chomp
print "What movement? > "; @player_movement = gets.chomp

if    dieties[@cchoices[6]]    ==  @player_diety; @enemy_diety = current_enemy_dieties; enemy_diety
elsif dieties[@player_diety]   ==   @cchoices[6]; player_diety
elsif @cchocies[6]             == @player_action; puts "Worship dieties was disrupted."
else
  puts "< Player's diety does not exist."
end

if    actions[@cchoices[0]]    == @player_action; enemy_action
elsif actions[@player_action]  ==   @cchoices[0]; player_action
elsif @cchocies[0]             == @player_action; puts "Actions in this turn were disrupted."
else
  puts "< Player action was not understood."
end

if    magic[@cchoices[3]]  ==    @player_magic; enemy_magic
elsif magic[@player_magic] ==     @cchoices[3]; player_magic
elsif @cchocies[3]         == @player_movement; puts "Movements in this turn were disrupted."
else
  puts "< Player movement was not understood."
end

if    movement[@cchoices[1]]      == @player_movement; enemy_movement
elsif movement[@player_movement]  ==     @cchoices[1]; player_movement
elsif @cchocies[1]                == @player_movement; puts "Movements in this turn were disrupted."
else
  puts "< Player movement was not understood."
end
