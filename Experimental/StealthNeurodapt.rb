require "parslet"

module StealthNeurodaptLang
  class NeurodaptParser < Parslet::Parser
    root(:neurolog)

    rule(:space)    {   str(" ") }
    rule(:comma)    {   str(",") }
    rule(:lbracket) {   str("(") }
    rule(:rbracket) {   str(")") }
    rule(:punc)     {   str(".") }

    # identifiers
    rule(:mot)      { str("mot") }

    rule(:neurolog) { mot >> lbracket >> grammar >> comma >> space >> specific_word >> rbracket >> punc }

    # grammar component
    rule(:grammr) { word_class | noun | adjective | subject | verb | adverb }

    # specific words
    rule(:specific_word) { specific_class | specific_noun   | specific_adjective | specific_subject |
                           specific_verb  | specific_adverb }

    ## Class Based Rules
    rule(:specific_class) { le | la | les | anu | ana | anos }

    rule(:le)   { match["A-Za-z"].repeat }
    rule(:la)   { match["A-Za-z"].repeat }
    rule(:les)  { match["A-Za-z"].repeat }
    rule(:anu)  { match["A-Za-z"].repeat }
    rule(:ana)  { match["A-Za-z"].repeat }
    rule(:anos) { match["A-Za-z"].repeat }

    ## Noun Based Rules
    rule(:specific_noun) { citron | pomme | aubergine | remon | appuru | nasu }

    rule(:citron)    { match["A-Za-z"].repeat }
    rule(:pomme)     { match["A-Za-z"].repeat }
    rule(:aubergine) { match["A-Za-z"].repeat }
    rule(:remon)     { match["A-Za-z"].repeat }
    rule(:appuru)    { match["A-Za-z"].repeat }
    rule(:nasu)      { match["A-Za-z"].repeat }

    ## Adjective Based Rules
    rule(:specific_adjective) { rouge | orange | jaune | vert | bleu | violet }

    rule(:rouge)  { match["A-Za-z"].repeat }
    rule(:orange) { match["A-Za-z"].repeat }
    rule(:jaune)  { match["A-Za-z"].repeat }
    rule(:vert)   { match["A-Za-z"].repeat }
    rule(:bleu)   { match["A-Za-z"].repeat }
    rule(:violet) { match["A-Za-z"].repeat }

    ## Subject Based Rules
    rule(:specific_subject) { je | tu | vous | moi | nous | elle | elles | il | ils | nouselle | nouselles | nousil | nousils }

    rule(:je)        { match["A-Za-z"].repeat }
    rule(:tu)        { match["A-Za-z"].repeat }
    rule(:vous)      { match["A-Za-z"].repeat }
    rule(:nous)      { match["A-Za-z"].repeat }
    rule(:elle)      { match["A-Za-z"].repeat }
    rule(:elles)     { match["A-Za-z"].repeat }
    rule(:il)        { match["A-Za-z"].repeat }
    rule(:ils)       { match["A-Za-z"].repeat }
    rule(:nouselle)  { match["A-Za-z"].repeat }
    rule(:nouselles) { match["A-Za-z"].repeat }
    rule(:nousil)    { match["A-Za-z"].repeat }
    rule(:nousils)   { match["A-Za-z"].repeat }

    ## Verb Based Rules
    rule(:specific_verb) { a_ete_man | jete | tabe_ta | suro }

    rule(:a_ete_man) { match["A-Za-z"].repeat }
    rule(:jete)      { match["A-Za-z"].repeat }
    rule(:tabe_ta)   { match["A-Za-z"].repeat }
    rule(:suro)      { match["A-Za-z"].repeat }

    ## Specific Adverb
    rule(:specific_adverb) { rapidement | lentement | sassoku | yukkuri }

    rule(:rapidement) { match["A-Za-z"].repeat }
    rule(:lentement)  { match["A-Za-z"].repeat }
    rule(:sassoku)    { match["A-Za-z"].repeat }
    rule(:yukkuri)    { match["A-Za-z"].repeat }
  end

  class NeuroadaptTransform < Parslet::Transform
    rule(:mot) { "mot" }

    rule(:space)    { " " }
    rule(:comma)    { "," }
    rule(:punc)     { "." }
    rule(:lbracket) { "(" }
    rule(:rbracket) { ")" }

    ## Word Class Simples
    rule(le:   simple(:le))    {   le }
    rule(la:   simple(:la))    {   la }
    rule(les:  simple(:les))   {  les }
    rule(anu:  simple(:anu))   {  anu }
    rule(ana:  simple(:ana))   {  ana }
    rule(anos: simple(:anos))  { anos }

    ## Noun Simples
    rule(citron:    simple(:citron)) {    citron }
    rule(pomme:      simple(:pomme)) {     pomme }
    rule(aubergine: simple(:citron)) { aubergine }
    rule(remon:      simple(:remon)) {     remon }
    rule(appuru:    simple(:appuru)) {    appuru }
    rule(nasu:        simple(:nasu)) {      nasu }

    ## Adjective Simples
    rule(rouge:    simple(:rouge)) {  rouge }
    rule(orange:  simple(:orange)) { orange }
    rule(jaune:    simple(:jaune)) {  jaune }
    rule(vert:      simple(:vert)) {   vert }
    rule(bleu:      simple(:bleu)) {   bleu }
    rule(violet:  simple(:violet)) { violet }

    ## Subject Simples
    rule(je:               simple(:je)) {        je }
    rule(tu:               simple(:tu)) {        tu }
    rule(vous:           simple(:vous)) {      vous }
    rule(nous:           simple(:nous)) {      nous }
    rule(elle:           simple(:elle)) {      elle }
    rule(elles:         simple(:elles)) {     elles }
    rule(il:               simple(:il)) {        il }
    rule(ils:              simple(:je)) {       ils }
    rule(nouselle:   simple(:nouselle)) {  nouselle }
    rule(nouselles: simple(:nouselles)) { nouselles }
    rule(nousil:       simple(:nousil)) {    nousil }
    rule(nousils:     simple(:nousils)) {   nousils }

    ## Verb Simples
    rule(a_ete_man: simple(:a_ete_man)) { a_ete_man }
    rule(jete:           simple(:jete)) {      jete }
    rule(tabe_ta:     simple(:tabe_ta)) {   tabe_ta }
    rule(suro:           simple(:suro)) {      suro }

    ## Adverb Simples
    rule(rapidement: simple(:rapidement)) { rapidement }
    rule(lentement:   simple(:lentement)) {  lentement }
    rule(sassoku:       simple(:sassoku)) {    sassoku }
    rule(yukkuri:       simple(:yukkuri)) {    yukkuri }
  end

  class NeuroadaptEvaluate
    def self.process_input
      begin
        muliple_inputs = File.readlines("lib/ahuzacoslang/learned_language/nouns.txt")
        size_limit     = multiple_inputs.size.to_i
        index          = 0

        size_limit.times do
          parser      = AhusacosParser.new
          transform   = AhusacosTransform.new

          tree        = parser.parse(input[index])
          ast         = transform.apply(tree)
          ast_output = "#{ast}".to_s

          print "#{ast_ouput} => "
          puts "nil"

          sleep(1)

          index = index + 1
        end
      rescue
        puts "Error: This was not syntactically sound."

        StealthNeuroadapt::Analyze.revert_to_primitive
      end
    end
  end
end

module StealthNeurodapt
  class Analyze
    def learn_language_variable
      possible_nouns = File.readlines("lib/ahuzacoslang/possible_nouns/possible_nouns.txt")

      noun_graph = [
        [["#{possible_nouns[0]}", "#{possible_nouns[0]}"], ["#{possible_nouns[0]}", "#{possible_nouns[1]}"], ["#{possible_nouns[0]}", "#{possible_nouns[2]}"]],
        [["#{possible_nouns[1]}", "#{possible_nouns[0]}"], ["#{possible_nouns[1]}", "#{possible_nouns[1]}"], ["#{possible_nouns[1]}", "#{possible_nouns[2]}"]],
        [["#{possible_nouns[2]}", "#{possible_nouns[0]}"], ["#{possible_nouns[2]}", "#{possible_nouns[1]}"], ["#{possible_nouns[2]}", "#{possible_nouns[2]}"]],
      ]

      size_limit = possible_nouns.size.to_i
      index = 0

      ideal_noun = File.read(lib/ahuzeacoslang/ideal_noun/ideal_noun.txt)

      size_limit.times do
        row_options = [0, 1, 2]
        col_options = [0, 1, 2]
        arr_options = [0, 1]

        cur_row = row_options.sample
        cur_col = col_options.sample
        cur_arr = arr_options.sample

        current_noun = possible_nouns[cur_row][cur_col][cur_arr]

        if current_noun == ideal_noun
          File.open("lib/ahuzacoslang/learned_language/nouns.txt", "a") { |f|
            f.puts current_noun
          }
        else
          puts "Current noun does not match #{ideal_noun}..."
        end

        index = index + 1
      end
    end

    def guess_language_variable
      learned_nouns = File.readlines("lib/ahuzacoslang/learned_language/nouns.txt")
      size_limit = learned_nouns.size.to_i
      index = 0

      ideal_noun = File.read(lib/ahuzeacoslang/ideal_noun/ideal_noun.txt)

      size_limit.times do
        current_noun = learned_nouns[index].sample

        if current_noun == ideal_noun
          File.open("lib/prolog/language/nouns.pl", "a") { |f|
            f.puts current_noun
          }
        else
          puts "Remembering noun that most closely matches #{ideal_noun}..."
        end

        index = index + 1
      end
    end

    # If current learned material doesn't match ideal start, auto relearn.
    def revert_to_primitive
      learned_nouns = File.readlines("lib/ahuzacoslang/learned_language/nouns.txt")
      size_limit = learned_nouns.size.to_i
      index = 0

      ideal_noun = File.read(lib/ahuzeacoslang/ideal_noun/ideal_noun.txt)

      size_limit.times do
        current_noun = learned_nouns[index].sample

        if not current_noun == ideal_noun
          learn_prolog_variable
        else
          execute_expert_system
        end

        index = index + 1
      end
    end

    def execute_expert_system
      if File.exists?("lib/prolog/language/nouns.pl")
        learned_nouns = File.readlines("lib/ahuzacoslang/learned_language/nouns.txt")
        size_limit = learned_nouns.size.to_i
        index = 0

        ideal_noun = File.read(lib/ahuzeacoslang/ideal_noun/ideal_noun.txt)

        size_limit.times do
          current_noun = learned_nouns[index].sample

          if current_name == ideal_noun
            File.open("lib/prolog/language/nouns.pl", "a") { |f|
              f.puts current_noun
            }
          else
            puts "Remembering noun that most closely matches #{ideal_noun}..."
          end

          index = index + 1
        end
      else
        system("prolog lib/prolog/language/nouns.pl")
      end
    end

  end
end
