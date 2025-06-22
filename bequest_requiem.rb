######################################################################################
#                                     Deities                                        #
######################################################################################
def worship_preist;             BequestDietiesPlayer::Worship.worship_dakupreiste; end
def worship_mort_naussance;  BequestDietiesPlayer::Worship.worship_mort_naussance; end
def executioner_of_karma          BequestDietiesPlayer::Worship.bourreau_de_karma; end
def prisoner_in_black;                BequestDietiesPlayer::Worship.horyo_de_noir; end
######################################################################################
#                             Deity Power Invokation                                 #
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
def measure_sanity
  BequestMetrics::SanityTrust.measure_sanity
end

def measure_trust
  BequestMetrics::SanityTrust.measure_trust
end

def compare_values
  BequestMetrics::SanityTrust.compare_values
end
