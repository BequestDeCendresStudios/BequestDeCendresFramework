######################################################################################
#                                     Deities                                        #
######################################################################################
# Dieties will either granted specific rewards or punishments based on a form of     #
# random selection but with constraints to make certain kinds of outcomes more       #
# likely than other outcomes.                                                        #
######################################################################################
def worship_preist;             BequestDietiesPlayer::Worship.worship_dakupreiste; end
def worship_mort_naussance;  BequestDietiesPlayer::Worship.worship_mort_naussance; end
def executioner_of_karma          BequestDietiesPlayer::Worship.bourreau_de_karma; end
def prisoner_in_black;                BequestDietiesPlayer::Worship.horyo_de_noir; end
######################################################################################
#                             Deity Power Invokation                                 #
######################################################################################
# This specific sections creates functions that either punish the player for giving  #
# the wrong kind of respect to a diety, or rewards you if certain conditions are met #
# in game. Note that some as the names imply, some punishments are more devestating  #
# than other punishments.                                                            #
######################################################################################
## Harshness Of Their Penalties
def curse;                  BequestDietiesPlayer::DietyPower.dakupreiste_punish; end
def karada_duplicata;    BequestDietiesPlayer::DietyPower.mort_naussance_punish; end
def instant_death;    BequestDietiesPlayer::DietyPower.bourreau_de_karma_punish; end
def lose_money;           BequestDietiesPlayer::DietyPower.horyo_de_noir_punish; end

## Generosity Of Their Rewards [ Coming Soon]

######################################################################################
#                               Effect On Sanity                                     #
######################################################################################
# This an alternative to naive bayes that measure the level of player sanity in      #
# proportion to the level of trust other characters have in the main characters. You #
# can think of it sort of like in a visual novel where your relationship status with #
# a date depends on how well you treat them, but in this case tied with what your    #
# your sanity status is. Eventually I will add other effects like distorted speech   #
# of the MC.                                                                         #
######################################################################################
def measure_sanity
  BequestMetrics::SanityTrust.measure_sanity
end

def measure_trust
  BequestMetrics::SanityTrust.measure_trust
end

def compare_values
  BequestMetrics::SanityTrust.compare_values
end
