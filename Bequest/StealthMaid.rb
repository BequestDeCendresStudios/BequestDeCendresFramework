module StealthMaid
  class ToolStatistics
    ###############################################################################################
    #                                      BIANCA THE MAID                                        #
    ###############################################################################################
    # Bianca the Maid evaluates how much of a slob the player is by how much of the corruption    #
    # and contamination they cleaned from the game world.                                         #
    ###############################################################################################
    def self.panel
      system("clear")

      known_panels = File.readlines("lib/narrative/panels.txt")     # In a gosu context, this chooses a hand drawn caption like in a graphic novel.
      index        = File.read("lib/narrative/index.txt")

      size_limit = known_panels.size.to_i

      desired_panel = "maid"

      size_limit.times do
        if index > size_limit
          break
        end

        if    known_panels[index] == desired_panel
          current_panel = File.read("lib/narrative/maid.txt")

          puts current_panel

          break # You found the desired panel, break the loop.
        else
          #puts "Error: No Panel To Display"
        end

        index = index + 1
      end
    end

    def self.shovel_stats
      $shovel_action     = File.read("lib/data/metric/shovel_action.txt")
      $scoop_probability = 1 / scooped

      File.open("lib/data/metrics/scooped_probabilities.txt", "w") { |f|
        f.puts "Scooped, #{$scooped_probability}"
      }

      ## Get Labels
      scooped_data        = File.read("lib/data/metrics/scooped_probabilities.txt").split(", ")
      scooped_label       = scooped_data[0]
      scooped_probability = scooped_data[1].to_f

      unscooped_data        = File.read("lib/data/metrics/unscooped_probabilities.txt").split(", ")
      unscooped_label       = unscooped_data[0]
      unscooped_probability = unscooped_data[1].to_f

      success_metrics = {
        "Failure" => "#{scooped_label} was a failure.",
        "Success" => "#{scooped_label} was a success.",
      }

      success_rate  = success_metrics
      success_label = success_rate[$shovel_action]

      if    success_label == "#{$shovel_action} was a failure."
        success_probability = 1 - unscoooped_probability

        puts "[#{scooped_label}, #{success_probability} / #{unscooped_probability}]"

        case unscooped_probability
        when 0.12..0.50; puts "BIANCA: You few bits of corruption left to clean."
        when 0.50..0.75; puts "BIANCA: You still have a bit of corruption left to clean."
        when 0.75..1.00; puts "BIANCA: You hardly cleaned any bits of corruption."
        else
          puts "Error: Unscooped probability has an invalid value (#{unscooped_probability})."
        end
      elsif success_label == "#{$shovel_action} was a success."
        failure_probability = 1 - scooped_probability

        puts "[#{scooped_label}, #{failure_probability} / #{scooped_probability}]"

        case scooped_probability
        when 0.12..0.50; puts "BIANCA: You few bits of corruption left that are clean."
        when 0.50..0.75; puts "BIANCA: You have quite cleaned quite a bit of corruption."
        when 0.75..1.00; puts "BIANCA: You cleaned up most of the corruption."
        else
          puts "Error: Unscooped probability has an invalid value (#{unscooped_probability})."
        end
      else
        puts ">> Metrics are not known."
      end
    end

    def self.hammer_stats
      $hammer_action     = File.read("lib/data/metric/hammer_action.txt")
      $smash_probability = 1 / smashed

      File.open("lib/data/metrics/smashed_probabilities.txt", "w") { |f|
        f.puts "smashed, #{$smashed_probability}"
      }

      ## Get Labels
      smashed_data        = File.read("lib/data/metrics/smashed_probabilities.txt").split(", ")
      smashed_label       = smashed_data[0]
      smashed_probability = smashed_data[1].to_f

      unsmashed_data        = File.read("lib/data/metrics/unsmashed_probabilities.txt").split(", ")
      unsmashed_label       = unsmashed_data[0]
      unsmashed_probability = unsmashed_data[1].to_f

      success_metrics = {
        "Failure" => "#{smashed_label} was a failure.",
        "Success" => "#{smashed_label} was a success.",
      }

      success_rate  = success_metrics
      success_label = success_rate[$hammer_action]

      if    success_label == "#{$hammer_action} was a failure."
        success_probability = 1 - unscoooped_probability

        puts "[#{smashed_label}, #{success_probability} / #{unsmashed_probability}]"

        case unsmashed_probability
        when 0.12..0.50; puts "BIANCA: You have not made headway breaking open a passage."
        when 0.50..0.75; puts "BIANCA: You have almost broken through to the next area."
        when 0.75..1.00; puts "BIANCA: You have successfully broken a path way to the next area."
        else
          puts "Error: Unsmashed probability has an invalid value (#{unsmashed_probability})."
        end
      elsif success_label == "#{$hammer_action} was a success."
        failure_probability = 1 - smashed_probability

        puts "[#{smashed_label}, #{failure_probability} / #{smashed_probability}]"

        case smashed_probability
        when 0.12..0.50; puts "BIANCA: You have successfully broken a path way to the next area."
        when 0.50..0.75; puts "BIANCA: You have almost broken through to the next area."
        when 0.75..1.00; puts "BIANCA: You have not made headway breaking open a passage."
        else
          puts "Error: Unsmashed probability has an invalid value (#{unsmashed_probability})."
        end
      else
        puts ">> Metrics are not known."
      end
    end

  end
end
