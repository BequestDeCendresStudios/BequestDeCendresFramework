#######################################################################################
#                             Sanity And Trust Dynamics                               #
####################################################b##################################
# If your sanity is less the ability for your girlfriend to trust you, you get the    #
# bad ending ( turned into an Eldritch abomination or evil god.)                      #
#                                                                                     #
# If your girlfriend's trust she has in you is in balance with your sanity, then you  #
# get the good ending.                                                                #
#                                                                                     #
# If your the trust your girlfriend has in you vastly outpaces ( gets lower ) than    #
# than your sanity, gameplay alters based on her losing trust in you.                 #
#######################################################################################
module BequestMetrics
  class SanityTrust
    def self.initialize
      @sanity = File.read("lib/player/sanity.txt").to_i
      @trust  = File.read("lib/npc/trust.txt").to_i
    end

    def self.compare_values
      if    @sanity > @trust; print "Your sanity is greater than the ability for #{@npc_name} to trust you."
        BequestMetric::SanityTrust.measure_sanity
      elsif @sanity < @trust; print "Your sanity is less than the trust #{@npc_name} has for you."
        BequestMetric::SanityTrust.measure_trust
      end
    end

    def self.measure_sanity
      discrete_sanity = @sanity.to_f

      case @discrete_sanity
      when 0.001..0.035; puts "with low confidence."
      when 0.036..0.050; puts "with mild confidence."
      when 0.051..0.075; puts "with medium confidence."
      when 0.076..1.0;   puts "with high confidence."
      else
        puts "with zero confidence."
      end
    end

    def self.measure_trust
      discrete_trust = @trust.to_f

      case @discrete_trust
      when 0.001..0.035; puts "with low confidence."
      when 0.036..0.050; puts "with mild confidence."
      when 0.051..0.075; puts "with medium confidence."
      when 0.076..1.0;   puts "with high confidence."
      else
        puts "with zero confidence."
      end
    end
  end
end
