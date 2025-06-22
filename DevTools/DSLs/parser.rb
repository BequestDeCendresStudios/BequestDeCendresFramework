require "parslet"
require "naive_bayes"

module Ahusacos
  class AhusacosParser < Parslet::Parser
    root(:phrase_index)

    ###############################################################################
    # This determines the individual token syntax that the transpiler will be     #
    # using to construct French and Japanese sentences to convert into XML        #
    # format.                                                                     #
    ###############################################################################

    ## Punctuation
    rule(:space) { str(" ") }

    ### Further punctuation rules.
    rule(:punctuation)   { question_mark | full_stop }
    rule(:question_mark) { str("?") }
    rule(:full_stop)     { str(".") }

    ## Language Tokens
    rule(:gender)      { fr_gender | jp_gender }

    ### French Gender Rules
    rule(:fr_gender) { le  | la  |
                       lez | un  |
                       une | dez   }

    ### Japanese Gender Rules
    rule(:fr_gender) { anu  | ana |
                       anos | tu  |
                       ta   | tos   }

    #### Specific French gender rules.
    rule(:le)  {  str("le") }
    rule(:la)  {  str("la") }
    rule(:lez) { str("lez") }
    rule(:un)  {  str("un") }
    rule(:une) { str("une") }
    rule(:dez) { str("dez") }

    ### Specific Japanese gender rules.
    rule(:anu)  {  str("anu") }
    rule(:ana)  {  str{"ana") }
    rule(:anos) { str("anos") }
    rule(:tu)   {   str("tu") }
    rule(:ta)   {   str("ta") }
    rule(:tos)  {  str("tos") }

    ## Nouns
    rule(:noun)        { fr_person | fr_place | fr_thing | jp_person | jp_place | jp_thing }

    ### French Nouns
    rule(:fr_person) { fr_man | fr_woman | fr_boy | fr_girl | fr_animal }

    #### Specific French Persons
    rule(:fr_man)    {   str("homme") }
    rule(:fr_woman)  {   str("femme") }
    rule(:fr_boy)    {  str("garcon") }
    rule(:fr_girl)   {   str("fille") }
    rule(:fr_animal) { str("animale") }

    # French Places
    rule(:fr_place)    { fr_exterior | fr_interior }

    #### Specific French Exterior
    rule(:fr_exterior) {     fr_frontyard  |  fr_backyard |      fr_driveway |       fr_culdesac | fr_neighborhood | 
                           fr_gas_station  |      fr_cafe |       fr_theatre |  fr_bowling_alley | fr_movietheatre |
                                fr_grocery |  fr_hardware | fr_tattoo_parlor |        fr_primary |    fr_secondary |
                                 fr_office | fr_fire_dpmt |   fr_cochon_dpmt |       fr_sh_range |   fr_internment |
                           fr_voting_booth |    fr_forest |         fr_river |   fr_crosssection |    fr_stoplight |
                          fr_exec_scaffold | fr_cathedral |         fr_quary |     fr_campground |   fr_toll_booth |
                             fr_playground |  fr_citypark |     fr_skatepark | fr_parkinglot_ext |       fr_marina |
                         fr_outdoor_bridge
                       }

    #### Specific French Interior
    rule(:fr_interior) {  }

    #### Specific French Things
    rule(:fr_thing)  { fr_aesthetic |    fr_clear |     fr_cold | fr_complex | fr_cottage |
                       fr_farm      |    fr_heavy | fr_homemade | fr_hot     |  fr_liquid |
                       fr_loud      | fr_material |   fr_matter | fr_metal   | fr_natural |
                       fr_physical  |    fr_quiet |    fr_round | fr_rural   |   fr_shiny |
                       fr_square    |    fr_tools 
                     }

    # Japanese Nouns
    rule(:jp_person) { jp_man | jp_woman | jp_boy | jp_girl | jp_animal }

    rule(:jp_place)  { jp_exterior | jp_interior }

    rule(:jp_thing)  { jp_aesthetic |    jp_clear |     jp_cold | jp_complex | jp_cottage |
                       jp_farm      |    jp_heavy | jp_homemade | jp_hot     |  jp_liquid |
                       jp_loud      | jp_material |   jp_matter | jp_metal   | jp_natural |
                       jp_physical  |    jp_quiet |    jp_round | jp_rural   |   jp_shiny |
                       jp_square    |    jp_tools 
                     }

    rule(:jp_place)    { jp_exterior | jp_interior }

    #### Specific French Exterior
    rule(:jp_exterior) {     jp_frontyard  |  jp_backyard |      jp_driveway |       jp_culdesac | jp_neighborhood | 
                           jp_gas_station  |      jp_cafe |       jp_theatre |  jp_bowling_alley | jp_movietheatre |
                                jp_grocery |  jp_hardware | jp_tattoo_parlor |        jp_primary |    jp_secondary |
                                 jp_office | jp_fire_dpmt |   jp_cochon_dpmt |       jp_sh_range |   jp_internment |
                           jp_voting_booth |    jp_forest |         jp_river |   jp_crosssection |    jp_stoplight |
                          jp_exec_scaffold | jp_cathedral |         jp_quary |     jp_campground |   jp_toll_booth |
                             jp_playground |  jp_citypark |     jp_skatepark | jp_parkinglot_ext |       jp_marina |
                         jp_outdoor_bridge
                       }

    #### Specific French Interior
    rule(:fr_interior) {  }

    # otoko | josei | otokonoko | onnanoko
    #rule(:jp_idea)

    # Negation
    rule(:negation) { fr_negation | jp_negation }

    ## French Negation
    rule(:fr_negation) { str("ne") }

    ## Japanese Negation
    rule(:jp_negation) { str("ni") }

    # French Adjectives
    rule(:fr_adjective) { fr_look | fr_smell | fr_feel | fr_taste | fr_sound }

    # Japanese Adjectives
    rule(:jp_adjective) { jp_look | jp_smell | jp_feel | jp_taste | jp_sound }

    # French Preposition 
    rule(:fr_preposition) { fr_time    |  fr_place |   fr_movement |
                            fr_manner  |  fr_agent | fr_instrument | 
                            fr_measure | fr_source |  fr_posession   }

    # Japanese Preposition
    rule(:jp_preposition) { jp_time    |  jp_place |   jp_movement |
                            jp_manner  |  jp_agent | jp_instrument |
                            jp_measure | jp_source |  jp_posession   }

    # French Verbs
    rule(:fr_verb) {    fr_action | fr_stative | fr_transitive | fr_intransitive |
                       fr_linking | fr_helping |       fr_mood |      fr_regular |
                     fr_irregular | fr_phrasal | fr_infinitive                     }

    # Japanese Verbs
    rule(:jp_verb) {    fr_action | fr_stative | fr_transitive | fr_intransitive |
                       fr_linking | fr_helping |       fr_mood |      fr_regular |
                     fr_irregular | fr_phrasal | fr_infinitive                     }
    # French adverbs
    rule(:fr_adverb) { fr_manner | fr_degree | fr_time }

    # Japanese adverbs
    rule(:jp_adverb) ( jp_manner | jp_degree | jp_time )

    ###############################################################################
    # The actual way that French and Japanese sentences are constructed using the #
    # prescribed tokens.                                                          #
    ###############################################################################
  end

  class AhusacosTransform < Parslet::Transform
  end

  class AhusacosXML
    def self.convert_to_xml
    end
  end
end
