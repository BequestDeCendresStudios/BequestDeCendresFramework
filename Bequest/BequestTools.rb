module StealthTools
  class UseTools
    def self.initialize
      $shovel     = false
      $hammer     = false
      $toolset    = false
      $flashlight = false
    end

    def self.scoop_contamination
      if $shovel == true
        scooped   = 0
        unscooped = 0

        loop do
          if scooped > 10
            puts ">> That's enough cleaning for now."

            break
          end

          if unscooped > 10
            puts ">> You're not cut out for this job."

            break
          end

          failure_rate = [
            [["failure", "failure"], ["failure", "succeed"]],
            [["succeed", "failure"], ["succeed", "succeed"]],
          ]

          row_options = [0, 1]
          col_options = [0, 1]
          arr_options = [0, 1]

          cur_row = row_options.sample
          cur_col = col_options.sample
          cur_arr = arr_options.sample

          success_rate = failure_rate[cur_row][cur_col][cur]

          if    success_rate == "succeed"; puts ">> You succeed in scooping some contamination."; scooped   =   scooped + 1
          elsif success_rate == "failure"; puts ">> You failed in scooping some contamination.";  unscooped = unscooped + 1
          end
        end
      else
        puts ">> There is no shovel for you to clean this contamination."
      end
    end

    def self.break_passageway
      if $hammer == true
        path_broken = 0
        path_caved  = 0

        loop do
          if path_broken > 10
            puts ">> That's enough passages made for now."

            break
          end

          if path_caved > 10
            puts ">> You're not cut out for this job."

            break
          end

          failure_rate = [
            [["failure", "failure"], ["failure", "succeed"]],
            [["succeed", "failure"], ["succeed", "succeed"]],
          ]

          row_options = [0, 1]
          col_options = [0, 1]
          arr_options = [0, 1]

          cur_row = row_options.sample
          cur_col = col_options.sample
          cur_arr = arr_options.sample

          success_rate = failure_rate[cur_row][cur_col][cur]

          if    success_rate == "succeed"; puts ">> You succeed in scooping some contamination."; path_broken = path_broken + 1
          elsif success_rate == "failure"; puts ">> You fao;ed in scooping some contamination.";  path_caved  = path_caved  + 1
          end
        end
      else
        puts ">> There is no hammer for you to break a passage way."
      end
    end

    def self.disarm_trap
      if $toolset == true
        traps_disarmed   = 0
        traps_activated  = 0

        loop do
          if path_broken > 10
            puts ">> That's enough traps disarmed for now."

            break
          end

          if path_caved > 10
            puts ">> You're not cut out for this job."

            break
          end

          failure_rate = [
            [["failure", "failure"], ["failure", "succeed"]],
            [["succeed", "failure"], ["succeed", "succeed"]],
          ]

          row_options = [0, 1]
          col_options = [0, 1]
          arr_options = [0, 1]

          cur_row = row_options.sample
          cur_col = col_options.sample
          cur_arr = arr_options.sample

          success_rate = failure_rate[cur_row][cur_col][cur]

          if    success_rate == "succeed"; puts ">> You succeed in disarming a trap."; traps_disarmed  = traps_disarmed + 1
          elsif success_rate == "failure"; puts ">> You failed in disarming a trap.";  traps_activated = traps_activated + 1
          end
        end
      else
        puts ">> There is no tool set to deactivate the traps."
      end
    end

    def self.shine_flashlight
      if $flashlight == true
        possible_dungeon = File.readlines("lib/maps/passages.txt")
        index            = 0

        current_dungeon = possible_dungeon[index]

        if    current_dungeon ==     "graveyard"
          graveyard = File.read("lib/maps/graveyard.txt");         puts graveyard

        elsif current_dungeon ==     "catecombs"
          catecombs = File.read("lib/maps/catecombs.txt");         puts catecombs

        elsif current_dungeon ==       "caverns"
          caverns = File.read("lib/maps/caverns.txt");             puts caverns

        elsif current_dungeon == "ancienttemple"
          ancienttemple = File.read("lib/maps/ancienttemple.txt"); puts ancienttemple

        elsif current_dungeon == "kumabattolair"
          kumabattolair = File.read("lib/maps/kumabattolair.txt"); puts kumabattolair

        elsif current_dungeon == "village"
          village = File.read("lib/maps/village.txt");             puts village

        else
          puts "Unrecognized map."
        end
      else
        puts ">> There is no flashlight to light a passage."
      end
    end

    def self.cast_elements
      if $magic_staff == true
        spells_missed     = 0
        spells_on_target  = 0

        loop do
          if spells_missed > 10
            puts ">> You're not cut out for this job."

            break
          end

          if spells_on_target > 10
            puts ">> That's enough spell casting for now."

            break
          end

          failure_rate = [
            [["failure", "failure"], ["failure", "succeed"]],
            [["succeed", "failure"], ["succeed", "succeed"]],
          ]

          row_options = [0, 1]
          col_options = [0, 1]
          arr_options = [0, 1]

          cur_row = row_options.sample
          cur_col = col_options.sample
          cur_arr = arr_options.sample

          success_rate = failure_rate[cur_row][cur_col][cur]

          if    success_rate == "succeed"; puts ">> You succeed in casting an element."; spells_missed    = spells_missed + 1
          elsif success_rate == "failure"; puts ">> You failed in casting an element";   spells_on_target = spells_on_target + 1
          end
        end
      else
        puts ">> There is no magic staff to cast elemental magic."
      end
    end

    def self.find_tools
    end
  end

  class ToolStatistics
    def self.shovel_stats
      success_metrics = {
        "failure" => "#{choice} was a failure.",
        "success" => "#{choice} was a success.",
      }, 0.25

      success_rate  = success_metrics[0]
      success_label = success_rate[player_action]

      if    success_label == "#{choice} was a failure."
        success_probability = success_metrics[1]

        success_rate = success_probability
        failure_rate = 1 - success_rate

        puts "[#{success_label}, #{success_rate} / #{failure_rate}]"
      elsif success_label == "#{choice} was a success."
        success_probability = success_metrics[1]

        failure_rate = success_probability
        success_rate = 1 - success_rate

        puts "[#{success_label}, #{success_rate} / #{failure_rate}]"
      else
        puts ">> Success metrics are not known."
      end
    end

    def self.hammer_stats
      success_metrics = {
        "failure" => "#{choice} was a failure.",
        "success" => "#{choice} was a success.",
      }, 0.25

      success_rate  = success_metrics[0]
      success_label = success_rate[player_action]

      if    success_label == "#{choice} was a failure."
        success_probability = success_metrics[1]

        success_rate = success_probability
        failure_rate = 1 - success_rate

        puts "[#{success_label}, #{success_rate} / #{failure_rate}]"
      elsif success_label == "#{choice} was a success."
        success_probability = success_metrics[1]

        failure_rate = success_probability
        success_rate = 1 - success_rate

        puts "[#{success_label}, #{success_rate} / #{failure_rate}]"
      else
        puts ">> Success metrics are not known."
      end
    end

    def self.toolset_stats
      success_metrics = {
        "failure" => "#{choice} was a failure.",
        "success" => "#{choice} was a success.",
      }, 0.25

      success_rate  = success_metrics[0]
      success_label = success_rate[player_action]

      if    success_label == "#{choice} was a failure."
        success_probability = success_metrics[1]

        success_rate = success_probability
        failure_rate = 1 - success_rate

        puts "[#{success_label}, #{success_rate} / #{failure_rate}]"
      elsif success_label == "#{choice} was a success."
        success_probability = success_metrics[1]

        failure_rate = success_probability
        success_rate = 1 - success_rate

        puts "[#{success_label}, #{success_rate} / #{failure_rate}]"
      else
        puts ">> Success metrics are not known."
      end
    end

    def self.magic_stats
      success_metrics = {
        "failure" => "#{choice} was a failure.",
        "success" => "#{choice} was a success.",
      }, 0.25

      success_rate  = success_metrics[0]
      success_label = success_rate[player_action]

      if    success_label == "#{choice} was a failure."
        success_probability = success_metrics[1]

        success_rate = success_probability
        failure_rate = 1 - success_rate

        puts "[#{success_label}, #{success_rate} / #{failure_rate}]"
      elsif success_label == "#{choice} was a success."
        success_probability = success_metrics[1]

        failure_rate = success_probability
        success_rate = 1 - success_rate

        puts "[#{success_label}, #{success_rate} / #{failure_rate}]"
      else
        puts ">> Success metrics are not known."
      end
    end

    def self.flashlight_stats
      success_metrics = {
        "failure" => "#{choice} was a failure.",
        "success" => "#{choice} was a success.",
      }, 0.25

      success_rate  = success_metrics[0]
      success_label = success_rate[player_action]

      if    success_label == "#{choice} was a failure."
        success_probability = success_metrics[1]

        success_rate = success_probability
        failure_rate = 1 - success_rate

        puts "[#{success_label}, #{success_rate} / #{failure_rate}]"
      elsif success_label == "#{choice} was a success."
        success_probability = success_metrics[1]

        failure_rate = success_probability
        success_rate = 1 - success_rate

        puts "[#{success_label}, #{success_rate} / #{failure_rate}]"
      else
        puts ">> Success metrics are not known."
      end
    end
  end
end
