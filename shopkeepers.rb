require_relative "Stealth/StealthMerchant.rb"
require_relative "Stealth/StealthDiscreteStatus.rb"
require_relative "Stealth/StealthMentor.rb"
require_relative "Experimental/StealthCalender.rb"

###########################################################################
#              Procedurally Generated Towns And Villages                  #
###########################################################################
# This procedurally generates towns and villages for the player to spawn  #
# in, and has a degree of nuance for how widely open the door is that you #
# exit to reach town, suggesting whether a monster has been near by or    #
# or not.                                                                 #
#                                                                         #
# There are three main shops: Inn, Pet Shop ( for upgrades and grooming   #
# your spider pig pet ), and a wooden shoe carpenter, with some shoes     #
# breaking and the more wear they get having hp minuses.                  #
#                                                                         #
# You can also consult the mentor that grades you based on your degree    #
# of improvement in certain areas. Note you should assume these are under #
# active development.                                                     #
###########################################################################
def get_global_stats;        StealthCalender::LunarSeason.global_stats; end
def check_lunar_phase;        StealthCalender::LunarSeason.lunar_cycle; end
def get_door_status;                    StealthStatus::Log.door_status; end
def choose_features;   StealthMerchant::LocaleFeatures.choose_features; end
def inn_clerk;                              StealthMerchant::Inn.clerk; end
def pet_shop;                           StealthMerchant::PetShop.clerk; end
def shoe_carpenter;           StealthMerchant::ShoeCarpenter.carpenter; end

def consult_mentor
  StealthMentor::Mentor.mentor
  StealthMentor::Mentor.mentor_labels
  StealthMentor::Mentor.mentor_probability
end

## Gamestates that don't require player input.
get_global_stats
choose_features
get_door_status
check_lunar_phase

puts "[ sleep ] Rent Room"
puts "[ pets ] Go To Pet Store"
puts "[ armour ] Visit shoe carpenter"

print "What shop do you need? << "; shop_type = gets.chomp

if    shop_type ==  "sleep";      inn_clerk
elsif shop_type ==   "pets";       pet_shop
elsif shop_type == "armour"; shoe_carpenter
elsif shop_type == "wisdom"; consult_mentor
else
  exit_town
end
