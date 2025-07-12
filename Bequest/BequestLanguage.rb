module Shoganai
  class ShoganaiParser < Parslet::Parser
    root(:document)

    rule(:document) { instructions }

    rule(:instructions)  { fonc     | cette_maisette_sinon |
                           shoganai | wabisab              | parle |
                           bokette
                         }

    ## Specific searches
    ## rule(:search_files)  {}

    ## Specific instructions
    rule(:fonc)                 { fonc_header >> whitespace >> identifier >>
                                  whitespace  >> cette_maisette_sinon     >> whitespace >>
                                  mort 
                                } # Specifies a specific function.

    rule(:cette_maisette_sunon) { cette >> string >> equality >> identifier >> terminator >> process >> fin } # Alternative to if-then-else, based on knowledge rather than behaviours.

    rule(:process)              { shoganai | wabisab | parle | bokette }

    rule(:shoganai)             { shoganai_header >> double_quote >> string >> double_quote >> terminator } # Checks to see if a file exists, and if it does bugs before running.
    rule(:wabisab)              { wabisab_header  >> double_quote >> string >> double_quote >> terminator } # If a file is stylistic, avoid breaking changes.
    rule(:parle)                { parle_header    >> double_quote >> string >> double_quote >> terminator } # Print a line and reading it out load.
    rule(:bokette)              { bokette_header  >> double_quote >> string >> double_quote >> terminator } # Sleeps before reading out load.

    ## Headers
    rule(:fonc_header)     {      str("fonc") }
    rule(:shoganai_header) { str("shoganai(") }
    rule(:wabisab_header)  {  str("wabisab(") }
    rule(:parle_header)    {    str("parle(") }
    rule(:bokette_header)  {  str("bokette(") }

    ## Syntax
    rule(:terminator)    {                                    str(").") }
    rule(:string)        { double_quote >> file_specify >> double_quote }
    rule(:identifier)    {                    match["A-Za-z0-9"].repeat }

    rule(:whitespace)    {      match['\n\s'].repeat }
    rule(:space)         {        match['\s'].repeat }
    rule(:double_quote)  {                  str('"') }
    rule(:file_specify)  {            str("ceposer") }

    ## Operators
    rule(:equality)      { str("==") }

    rule(:fin)                  {  str("fin") } # The fin exits the cette_maisette.
    rule(:mort)                 { str("mort") } # The mort exits the entire program.

    ## Specific search syntax
  end

  class ShoganaiTransform < Parslet::Transform
    ## Headers Strings
    rule(:fonc_header)     {      "fonc" }
    rule(:shoganai_header) { "shoganai(" }
    rule(:wabisab_header)  {  "wabisab(" }
    rule(:parle_header)    {    "parle(" }
    rule(:bokette_header)  {  "bokette(" }

    # Syntax Strings
    rule(:terminator)    {   ")." }
    rule(:double_quote)  {    '"' }
    rule(:fin)           {  "fin" }
    rule(:mort)          { "mort" }

    ## Operator Strings
    rule(:equality)      { "==" }

    ## Simples
    rule(file_specify: simple(:file_specify))  { file_specify }
    rule(whitespace:   simple(:whitespace))    {   whitespace }
    rule(space:        simple(:space))         {        space }
  end

  class ShoganaiOutput
    def self.jfunction
      def self.shoganai # If rewriting isn't possible, then isolates function to quarantine it.
        print "What file would you like to quarantine? >>"; quarantine = gets.chomp

        system("sudo cp lib/documents/#{quarantine}.txt quarantine/#{quarantine}.txt; cd lib/documents; rm #{quarantine}.txt")
      end

      def self.wabisab  # Checks to see if function breaks, and if not avoid rewriting.
        base_file = File.read("lib/documentas/#orate.txt")

        print "Is this what you intended? >> "; answer = gets.chomp

        if answer == "confirm"
          File.open("lib/documents/prolog/knowledgebase.pl", "w") { |f|
            f.puts base_file
          }
        else
          puts "Then I wont write this to a prolog knowledge base."

          Shoganai::ShoganiOutput.jfunction.shoganai
        end
      end

      def self.bokette  # Waits before reading out loud a piece of text.
        sleep(1.5)

        Shoganai::ShoganaiOutput.f_function.parle
      end

      def self.atama_kensaku
        possible_knowledge_baes = [
          [["fruit.pl",   "fruits.pl"], ["fruits.pl",  "veggies.pl"], ["fruits.pl",  "meats.pl"]],
          [["vaggies.pl", "fruits.pl"], ["veggies.pl", "veggies.pl"], ["veggies.pl", "meats.pl"]],
          [["meats.pl",   "fruits.pl"], ["meats.pl",   "veggies.pl"], ["meats.pl",   "meats.pl"]],
        ]

        row_options = [0, 1, 2]
        col_options = [0, 1, 2]
        arr_options = [0, 1]

        cur_row = row_options.sample
        cur_col = col_options.sample
        cur_arr = arr_options.sample

        current_search = possible_knowledge_bases[cur_row][cur_col][cur_arr]

        if File.exist?(current_search)
          system("swipl #{current_search}")
        else
          puts "This file does not exist, and thus cannot be consulted."
        end
      end
    end

    def self.f_function
      def self.parle # Immediately reads out load a piece of text.
        print "Which file would you like me to orate? >> "; orate = gets.chomp

        file_to_be_spoken = "lib/documents/#{orate}.txt"

        if File.exist?(file_to_be_spoken)
          current_file = File.readlines(file_to_be_spoken)
          read_limit   = current_file.size.to_i
          indexer      = 0

          read_limit.times do
            system("espeak '#{current_file[indexer]}'")

            indexer = indexer + 1
          end
        else
          puts "This file does not exist, and thus cannot be read out loud."
        end
      end
    end
  end
end
