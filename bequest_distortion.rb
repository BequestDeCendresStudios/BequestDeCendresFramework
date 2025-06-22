require_relative "Bequest/BequestDistortion.rb"

##########################################################################
#                      Bequest Dialogue Framework                        #
##########################################################################
# This allows for new dialogue to be spoken that isn't pre-scripted      #
# ahead of time to learn the particulars about the fantasy language, or  #
# to have NPCs say things casual that don't have plot significance, but  #
# are said off the cuff.                                                 #
##########################################################################
def word_class_distortion
  BequestLanguage::LanguageDistortion.word_class_distortion
end

def noun_distortion
  BequestLanguage::LanguageDistortion.noun_distortion
end

def subject_distortion
  BequestLanguage::LanguageDistortion.subject_distortion
end

def verb_distortion
  BequestLanguage::LanguageDistortion.verb_distortion
end

def adverb_distortion
  BequestLanguage::LanguageDistortion.adverb_distortion
end

def adjust_context_window
  BequestLanguage::LanguageDistortion.adjust_context_window
end

word_class_distortion;   noun_distortion; subject_distortion;
verb_distortion;       adverb_distortion; 

# If needed
# adjust_context_window # This allows you to adjust the context between formal and casual.