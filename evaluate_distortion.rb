require_relative "Bequest/BequestDistortion.rb"

###########################################################################
#                            NPC Dialogue                                 #
###########################################################################
# This is a way to create NPC dialogue without relying on pre-scripted    #
# dialogue, so the bulk of the energy is spent on scripting out dialogue  #
# of important characters. Over time as this improves, eventually it will #
# become more practical to use this as the main way for all characters    #
# to converse outside of pre-scripted events.                             #
###########################################################################
def distort_npc_language
  BequestDistortion::LanguageDistortion.word_class_distortion
  BequestDistortion::LanguageDistortion.noun_distortion
  BequestDistortion::LanguageDistortion.subject_distortion
  BequestDistortion::LanguageDistortion.verb_distortion
  BequestDistortion::LanguageDistortion.adverb_distortion
  BequestDistortion::LanguageDistortion.auto_correct
end

def measure_risk
  BequestDistortion::MeasureRisk.evaluate_class
  BequestDistortion::MeasureRisk.evaluate_noun
  BequestDistortion::MeasureRisk.evaluate_subject
  BequestDistortion::MeasureRisk.evaluate_verb
  BequestDistortion::MeasureRisk.evaluate_adverb
  BequestDistortion::MeasureRisk.total_risk
end
