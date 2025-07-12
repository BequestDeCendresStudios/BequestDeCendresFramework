module BequestWordGenerator

  ###########################################################################
  #                        Standard Word Generators                         #
  ###########################################################################
  # The three main word generators create words that are most similar to    #
  # the way that Japanese reads and sounds. Which is in contast from what   #
  # my fantasy language would later evolve into, being more related to the  #
  # French language with some influence from Nihongo.                       #
  ###########################################################################
  class WordLengths
    def self.one_character
      dipthongs  = File.readlines("dictionary/dipthongs.txt")
      tripthongs = File.readlines("dictionary/tripthongs.txt")

      chosen_tripthong = tripthongs.sample.strip.to_s
      chosen_dipthong  = dipthongs.sample.strip.to_s

      generated_word = chosen_tripthong + chosen_dipthong

      masculine      = generated_word.chop +  "u"
      feminine       = generated_word.chop +  "a"
      plural         = generated_word.chop + "os"
    
      puts "Single Factor"
      puts "#{masculine} #{feminine} #{plural}"

      puts " "
    end

    def self.three_character
      dipthongs  = File.readlines("dictionary/dipthongs.txt")
      tripthongs = File.readlines("dictionary/tripthongs.txt")

      chosen_tripthong1 = tripthongs.sample.strip.to_s
      chosen_dipthong1  = dipthongs.sample.strip.to_s

      chosen_tripthong2 = tripthongs.sample.strip.to_s
      chosen_dipthong2  = dipthongs.sample.strip.to_s

      chosen_tripthong3 = tripthongs.sample.strip.to_s
      chosen_dipthong3  = dipthongs.sample.strip.to_s

      component_one = chosen_tripthong1 + chosen_dipthong1
      component_two = chosen_tripthong2 + chosen_dipthong2
      component_tre = chosen_tripthong3 + chosen_dipthong3

      generated_word = component_one + component_two + component_tre

      masculine      = generated_word.chop +  "u"
      feminine       = generated_word.chop +  "a"
      plural         = generated_word.chop + "os"
    
      puts "Three Factor"
      puts "#{masculine} #{feminine} #{plural}"

      puts " "
    end

    def self.five_character
      dipthongs  = File.readlines("dictionary/dipthongs.txt")
      tripthongs = File.readlines("dictionary/tripthongs.txt")

      chosen_tripthong1 = tripthongs.sample.strip.to_s
      chosen_dipthong1  = dipthongs.sample.strip.to_s

      chosen_tripthong2 = tripthongs.sample.strip.to_s
      chosen_dipthong2  = dipthongs.sample.strip.to_s

      chosen_tripthong3 = tripthongs.sample.strip.to_s
      chosen_dipthong3  = dipthongs.sample.strip.to_s

      chosen_tripthong4 = tripthongs.sample.strip.to_s
      chosen_dipthong4  = dipthongs.sample.strip.to_s

      chosen_tripthong5 = tripthongs.sample.strip.to_s
      chosen_dipthong5  = dipthongs.sample.strip.to_s

      component_one = chosen_tripthong1 + chosen_dipthong1
      component_two = chosen_tripthong2 + chosen_dipthong2
      component_tre = chosen_tripthong3 + chosen_dipthong3
      component_fro = chosen_tripthong4 + chosen_dipthong4
      component_fiv = chosen_tripthong5 + chosen_dipthong5

      generated_word = component_one + component_two + component_tre + component_fro + component_fiv

      masculine      = generated_word.chop +  "u"
      feminine       = generated_word.chop +  "a"
      plural         = generated_word.chop + "os"
    
      puts "Five Factor"
      puts "#{masculine} #{feminine} #{plural}"

      puts " "
    end

    def seven_character
      dipthongs  = File.readlines("dictionary/dipthongs.txt")
      tripthongs = File.readlines("dictionary/tripthongs.txt")

      chosen_tripthong1 = tripthongs.sample.strip.to_s
      chosen_dipthong1  = dipthongs.sample.strip.to_s

      chosen_tripthong2 = tripthongs.sample.strip.to_s
      chosen_dipthong2  = dipthongs.sample.strip.to_s

      chosen_tripthong3 = tripthongs.sample.strip.to_s
      chosen_dipthong3  = dipthongs.sample.strip.to_s

      chosen_tripthong4 = tripthongs.sample.strip.to_s
      chosen_dipthong4  = dipthongs.sample.strip.to_s

      chosen_tripthong5 = tripthongs.sample.strip.to_s
      chosen_dipthong5  = dipthongs.sample.strip.to_s

      chosen_tripthong6 = tripthongs.sample.strip.to_s
      chosen_dipthong6  = dipthongs.sample.strip.to_s

      chosen_tripthong7 = tripthongs.sample.strip.to_s
      chosen_dipthong7  = dipthongs.sample.strip.to_s

      component_one = chosen_tripthong1 + chosen_dipthong1 # dipthongs.sample.strip.to_s
      component_two = chosen_tripthong2 + chosen_dipthong2 # dipthongs.sample.strip.to_s
      component_tre = chosen_tripthong3 + chosen_dipthong3 # dipthongs.sample.strip.to_s
      component_fro = chosen_tripthong4 + chosen_dipthong4 # dipthongs.sample.strip.to_s
      component_fiv = chosen_tripthong5 + chosen_dipthong5 # dipthongs.sample.strip.to_s
      component_six = chosen_tripthong6 + chosen_dipthong6 # dipthongs.sample.strip.to_s
      component_sev = chosen_tripthong7 + chosen_dipthong7 # dipthongs.sample.strip.to_s

      generated_word = component_one + component_two + component_tre + component_fro + component_fiv + component_six + component_sev

      masculine      = generated_word.chop +  "u"
      feminine       = generated_word.chop +  "a"
      plural         = generated_word.chop + "os"
    
      puts "Seven Factor"
      puts "#{masculine} #{feminine} #{plural}"

      puts " "
    end

    ###########################################################################
    #                       Hybrid Portmanteau Generator                      #
    ###########################################################################
    # This is the hybrid port manteau generator that creates words that blend #
    # a French prefix with a Japanese suffix. Ex. Surfsuna. This language is  #
    # more similar to what the Ahuzacos would later become, as French with a  #
    # little bit of Japanese influence.                                       #
    ###########################################################################
    def self.hybrid_compounds
      japanese_words = File.readlines("dictionary/japanese_words.txt")
      french_words   = File.readlines("dictionary/french_words.txt")

      current_nihongo  = japanese_words.sample.strip.to_s
      current_francais = french_words.sample.strip.to_s

      generated_word = current_nihongo + current_francais

      masculine_class = "Te "
      feminine_class  = "Ta "
      plural_class    = "Deso "

      generated_masculine_form = masculine_class + generated_word
      generated_feminine_form  = feminine_class  + generated_word
      generated_plural_form    = plural_class    + generated_word

      masculine_end_word = generated_masculine_form.chop + "u"
      feminine_end_word  = generated_feminine_form.chop + "a"
      plural_end_word    = generated_plural_form.chop + "os"

      puts "Naturalistic"
      puts "#{masculine_end_word}"
      puts "#{feminine_end_word}"
      puts "#{plural_end_word}"
    end
  end
  
  ###########################################################################
  #                         Dreamlike Intersections                         #
  ###########################################################################
  # This tool is for studying the way that dreams blend and blur locations  #
  # in a human's memory. While other games explores characters being dreams #
  # rarely is the concept of "dreamspace" properly explored.                #
  ###########################################################################
  class DreamlikeIntersection
    def self.city_statistics
      require "naive_bayes"

      visualization = NaiveBayes.new(:dreamlike, :realistic)

      ## Dreamlike
      visualization.train(:dreamlike, "If Atlanta in canvas is 640x480 in pixels, it intersects and melts in with Murfreesboro at 213x160 pixels. The intersecting blur appears as the sum of both canvases, a fictional city: Atlanta Street, Murfreesboro at 746x560 pixels. Effectively blending two real world towns or cities.", "word")
      visualization.train(:dreamlike, "If Fairland in canvas is 640x480 in pixels, it intersects and melts in with California at 213x160 pixels. The intersecting blur appears as the sum of both canvases, a fictional city: Fairland Street, California at 746x560 pixels. Effectively blending two real world towns or cities.", "word")
      visualization.train(:realistic, "If San Diego in canvas is 320x240 in pixels, it intersects and melts in with Las Angeles at 106x80 pixels. The intersecting blur appears as the sum of both canvases, a fictional city: San Diego Street, Las Angeles at 373x280 pixels. Effectively blending two real world towns or cities.", "word")
      #visualization.train(:dreamlike, "Dog", "word")

      ## Realistic
      visualization.train(:realistic, "If Atlanta in canvas is 640x480 in pixels, it intersects and melts in with Georgia at 213x160 pixels. The intersecting blur appears as the sum of both canvases, a fictional city: Atlanta Street, Georgia at 746x560 pixels. Effectively blending two real world towns or cities.", "word")
      #visualization.train(:realistic, "Cat", "word")

      classification = visualization.classify(@hypothesis)

      print classification
    end

    def self.specific_crossections
      print "What is the height size ( in pixels ) of your main canvas? >> "; main_canvas_height  = gets.chomp.to_i
      print "What is the width size ( in pixels ) of your main canvas? >> ";  main_canvas_width   = gets.chomp.to_i
      print "What is the name of your city in main canvas? >> ";              city_in_main        = gets.chomp
      print "What is the name of the neighboring city? >> ";                  neighboring_city    = gets.chomp

      reduced_height = main_canvas_height / 3
      reduced_width  = main_canvas_width / 3

      sum_height = main_canvas_height + reduced_height / 2
      sum_width  = main_canvas_width + reduced_width / 2

      $hypothesis = "If #{city_in_main} in canvas is #{main_canvas_height}x#{main_canvas_width} in pixels, it intersects and melts in with #{neighboring_city} at #{reduced_height}x#{reduced_width} pixels. The intersecting blur appears as the sum of both canvases, a fictional city: #{city_in_main} Street, #{neighboring_city} at #{sum_height}x#{sum_width} pixels. Effectively blending two real world towns or cities."

      puts $hypothesis

      ## Display cross sections in Naive Bayes
      BequestWordGenerator::DreamlikeIntersection.specific_crossections
    end
  end
end
