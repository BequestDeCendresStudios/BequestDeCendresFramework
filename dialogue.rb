require_relative "bequest"

###################################################################################
#                     Emergent Semantic Dialogue Framework                        #
###################################################################################
# This is for procedurally generating NPC dialogue, and mapping newly generated   #
# patterns onto a graph that tracks word classes, nouns, adjectives, subjects,    #
# verbs, and eventually adverbs. Bug testing is still required to see why it's    #
# not generating adjectives.                                                      #
###################################################################################

## Primarily grammar generator that generates the fantasy language each word.
def standard_francophonic;    BequestDialogue::EachWord.standard_francophonic; end

## Dictionary Graphs
def grammar_one;     BequestDialogue::EachWord.grammar_one; end
def grammar_two;     BequestDialogue::EachWord.grammar_two; end
def grammar_three; BequestDialogue::EachWord.grammar_three; end

## Learning Mechanism For Dialogue
def adjust_expected_dialogue; BequestDialogue::EachWord.standard_francophonic; end
def learn_dialogue;                  BequestDialogue::EachWord.learn_dialogue; end
def guess_dialogue;                  BequestDialogue::EachWord.guess_dialogue; end
