require "parslet"

module AhusacosLang

  class AhusacosParser < Parslet::Parser
    root(:statement)

    rule(:statement) { isolate | full }

    rule(:space)     { match("\s").repeat(1) }
    rule(:spaceq)    {           space.maybe }
    rule(:ifs)       {             str(":-") }
    rule(:sbracketl) {              str("[") }
    rule(:sbracketr) {              str("]") }

    # Names
    rule(:name) { charlotte | joan }

    ## Specific Character Names
    rule(:charlotte) { str("charlotte") }
    rule(:joan)      {      str("joan") }

    # Verbs
    rule(:verb) {
        oublie |   avoir |   coupe | azeoir | lit       | regle  | attache | empaque | mourut
      # forget |     get |  remove |   wait | read file | adjust |  append |  bundle |   died

      # forget moves a dataset to an invisible directory
      # get allows you to use wget
      # remove allows you to remove a dataset completely.
      # read reads in a dataset
      # adjust allows you to add value to AI input
      # Append allows you to write and append new information.
      # Bundle allows you to bundle a gem.
    }

    rule(:oublie)  { str("oublier") }
    rule(:avoir)   {   str("avoir") }
    rule(:coupe)   {   str("coupe") }
    rule(:azeoir)  {  str("azeoir") }
    rule(:lit)     {     str("lit") }
    rule(:regle)   {   str("regle") }
    rule(:attache) { str("attache") }
    rule(:empaque) { str("empaque") }
    rule(:mourut)  {  str("mourut") }

    ## Expression Rules
    rule(:isolate) { isolated_header | isolated_closer }

    ### For writing isolated sections of data.
    rule(:isolated_header) { sbracketl >>
                             space     >>
                             name      >>
                             space     >>
                             verb      >>
                             space     >>
                             sbracketr
    }

    rule(:isolated_closer) { sbracketl    >>
                             space        >>
                             negation     >>
                             space        >>
                             verb         >>
                             space        >>
                             name         >>
                             space        >>
                             sbracketr
    }

    rule(:negation) { yes | no }

    ## Specific Negation Rules
    rule(:yes) { str("afait") }
    rule(:no)  {    str("ne") }


    ## For writing full expressions of data, such as to compare expressions.
    rule(:full) { header >> space >> closer }

    rule(:header) { sbracketl >>
                    space     >>
                    name      >>
                    space     >>
                    verb      >>
                    space     >>
                    sbracketr
    }

    rule(:closer) { sbracketl >>
                    space     >>
                    negation  >>
                    space     >>
                    verb      >>
                    space     >>
                    name      >>
                    space     >>
                    sbracketr
    }
  end

  class AhusacosTransform < Parslet::Transform
    rule(:space)     { " " }
    rule(:sbracketl) { "[" }
    rule(:sbracketr) { "]" }

    # Names
    rule(:charlotte) { "charlotte" }
    rule(:joan)      {      "joan" }

    # Negation
    rule(:yes) { str("afait") }
    rule(:no)  {    str("ne") }

    # Verbs
    rule(:oublie)  { "oublier" }
    rule(:avoir)   {   "avoir" }
    rule(:coupe)   {   "coupe" }
    rule(:azeoir)  {  "azeoir" }
    rule(:lit)     {     "lit" }
    rule(:regle)   {   "regle" }
    rule(:attache) { "attache" }
    rule(:empaque) { "empaque" }
  end

  class AhusacosCMD
    def self.character_fates
      line = 0

      loop do
        print "#{line} ?-"; input = gets.chomp # .split(" ")

        if input == "quit"
          abort
        end

        parser      = AhusacosParser.new
        transform   = AhusacosTransform.new

        tree        = parser.parse(input)
        ast         = transform.apply(tree)
        ast_output = "#{ast}".to_s

        #puts "\n >> #{ast_output}\n\n"

        open("_narratives/outcomes/character_fates.txt" , "a") { |f|
          f.puts ast_output
        }

        line = line + 1
      end
    end

    def self.dating_outcomes
      line = 0

      loop do
        print "#{line} ?-"; input = gets.chomp # .split(" ")

        if input == "quit"
          abort
        end

        parser      = AhusacosParser.new
        transform   = AhusacosTransform.new

        tree        = parser.parse(input)
        ast         = transform.apply(tree)
        ast_output = "#{ast}".to_s

        #puts "\n >> #{ast_output}\n\n"

        open("_narratives/outcomes/dating_outcomes.txt" , "a") { |f|
          f.puts ast_output
        }

        line = line + 1
      end
    end
  end

end
