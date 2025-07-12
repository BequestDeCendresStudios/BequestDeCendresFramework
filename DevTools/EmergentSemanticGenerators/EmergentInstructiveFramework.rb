module EmergentInstructiveFramework
  class LanguageModel
    def self.craft_conjunctive
      @conjunctive_intro = ", mais le direction"
    end

    def self.directional_verb
      n = "nord"
      s = "sud"
      w = "est"
      e = "oest"

      verbs = [
        [[n, n], [n, s], [n, w], [n, e]],
        [[s, n], [s, s], [s, w], [s, e]],
        [[w, n], [w, s], [w, w], [w, e]],
        [[e, n], [e, s], [e, w], [e, e]],
      ]

      v_row_options = [0, 1, 2, 3]
      v_col_options = [0, 1, 2, 3]
      v_arr_options = [0, 1]

      vcur_row = v_row_options.sample
      vcur_col = v_col_options.sample
      vcur_arr = v_arr_options.sample

      @chosen_verb = verbs[vcur_row][vcur_col][vcur_arr]
    end

    def self.pronouns
      y = "vous"
      i = "Je"

      pronouns = [
        [[y, y], [y, i]],
        [[i, y], [i, i]],
      ]

      row_options = [0, 1]
      col_options = [0, 1]
      arr_options = [0, 1]

      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      @chosen_pronoun = pronouns[cur_row][cur_col][cur_arr]
    end

    def self.follow_up_verb
      a =                 "eviter"
      b = "rosee de contournement"
      c =             "circumvent"

      follow_up_verb = [
        [[a, a], [a, b], [a, c]],
        [[b, a], [b, b], [b, c]],
        [[c, a], [c, b], [c, c]],
      ]

      row_options = [0, 1, 2]
      col_options = [0, 1, 2]
      arr_options = [0, 1]

      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      @chosen_followup = follow_up_verb[cur_row][cur_col][cur_arr]
    end

    def self.from_conjuctive_gen_phrase
      @conjunctive_phrase = "#{@conjunctive_intro} #{@chosen_verb} #{@chosen_pronoun} #{@chosen_followup}."

#                                                                                                              Le direction tous les autre bien, mais le direction nord vous eviter.
      if    @conjunctive_phrase ==                 ", mais le direction nord vous eviter."; @current_phrase = "Le direction tous les autre bien, mais le direction nord vous eviter."
      elsif @conjunctive_phrase ==                   ", mais le direction nord je eviter."; @current_phrase = "Le direction tous les autre bien, mais le direction nord je eviter."
      elsif @conjunctive_phrase ==                  ", mais le direction sud vous eviter."; @current_phrase = "Le direction tous les autre bien, mais le direction sud vous eviter."
      elsif @conjunctive_phrase ==                    ", mais le direction sud je eviter."; @current_phrase = "Le direction tous les autre bien, mais le direction sud je eviter."
      elsif @conjunctive_phrase ==                  ", mais le direction est vous eviter."; @current_phrase = "Le direction tous les autre bien, mais le direction est vous eviter."
      elsif @conjunctive_phrase ==                    ", mais le direction est je eviter."; @current_phrase = "Le direction tous les autre bien, mais le direction est je eviter."
      elsif @conjunctive_phrase ==                 ", mais le direction oest vous eviter."; @current_phrase = "Le direction tous les autre bien, mais le direction oest vous eviter."
      elsif @conjunctive_phrase ==                   ", mais le direction oest je eviter."; @current_phrase = "Le direction tous les autre bien, mais le direction oest je eviter."
      elsif @conjunctive_phrase == ", mais le direction nord vous rosee de contournement."; @current_phrase = "Le direction tous les autre bien, mais le direction nord vous rosee de contournement."
      elsif @conjunctive_phrase ==   ", mais le direction nord je rosee de contournement."; @current_phrase = "Le direction tous les autre bien, mais le direction nord je rosee de contournement."
      elsif @conjunctive_phrase ==  ", mais le direction sud vous rosee de contournement."; @current_phrase = "Le direction tous les autre bien, mais le direction sud vous rosee de contournement."
      elsif @conjunctive_phrase ==    ", mais le direction sud je rosee de contournement."; @current_phrase = "Le direction tous les autre bien, mais le direction sud je rosee de contournement."
      elsif @conjunctive_phrase ==  ", mais le direction est vous rosee de contournement."; @current_phrase = "Le direction tous les autre bien, mais le direction est vous rosee de contournement."
      elsif @conjunctive_phrase ==    ", mais le direction est je rosee de contournement."; @current_phrase = "Le direction tous les autre bien, mais le direction est je rosee de contournement."
      elsif @conjunctive_phrase == ", mais le direction oest vous rosee de contournement."; @current_phrase = "Le direction tous les autre bien, mais le direction oest vous rosee de contournement."
      elsif @conjunctive_phrase ==   ", mais le direction oest je rosee de contournement."; @current_phrase = "Le direction tous les autre bien, mais le direction oest je rosee de contournement."
      elsif @conjunctive_phrase ==             ", mais le direction nord vous circumvent."; @current_phrase = "Le direction tous les autre bien, mais le direction nord vous rosee de circumvent."
      elsif @conjunctive_phrase ==               ", mais le direction nord je circumvent."; @current_phrase = "Le direction tous les autre bien, mais le direction nord je rosee de circumvent."
      elsif @conjunctive_phrase ==              ", mais le direction sud vous circumvent."; @current_phrase = "Le direction tous les autre bien, mais le direction sud vous rosee de circumvent."
      elsif @conjunctive_phrase ==                ", mais le direction sud je circumvent."; @current_phrase = "Le direction tous les autre bien, mais le direction sud je rosee de circumvent."
      elsif @conjunctive_phrase ==              ", mais le direction est vous circumvent."; @current_phrase = "Le direction tous les autre bien, mais le direction est vous rosee de circumvent."
      elsif @conjunctive_phrase ==                ", mais le direction est je circumvent."; @current_phrase = "Le direction tous les autre bien, mais le direction est je rosee de circumvent."
      elsif @conjunctive_phrase ==             ", mais le direction oest vous circumvent."; @current_phrase = "Le direction tous les autre bien, mais le direction oest vous rosee de circumvent."
      elsif @conjunctive_phrase ==               ", mais le direction oest je circumvent."; @current_phrase = "Le direction tous les autre bien, mais le direction oest vous rosee de circumvent."
      else
        @current_phrase = "Le direction tous les autre bien, mais le direction nord vous eviter."
      end

      File.open("lib/npc/tourguide/possible_lines.txt", "a") { |f|
        f.puts @current_phrase
      }
    end

    def self.self_reinforcer
      #     1    2    4    8    7    5
      # 1 1,1  1,2  1,4  1,8  1,7  1,5
      # 2 2,1  2,2  2,4  2,8  2,7  2,5
      # 4 4,1  4,2  4,4  4,8  4,7  4,5
      # 8 8,1  8,2  8,4  8,8  8,7  8,5
      # 7 7,1  7,2  7,4  7,8  7,7  7,5
      # 5 5,1  5,2  5,4  5,8  5,7  5,5

      #      3    6    9
      # 3  3,3  3,6  3,9
      # 6  6,3  6,6  6,9
      # 9  9,3  9,6  9,9

      vortex = [ 1, 2, 4, 8, 7, 5 ]
      charge = [ 3, 6, 9 ]

      nested_vortex = [
        [[1, 1], [1, 2], [1, 4], [1, 8], [1, 7], [1, 5]],
        [[2, 1], [2, 2], [2, 4], [2, 8], [2, 7], [2, 5]],
        [[4, 1], [4, 2], [4, 4], [4, 8], [4, 7], [4, 5]],
        [[8, 1], [8, 2], [8, 4], [8, 8], [8, 7], [8, 5]],
        [[7, 1], [7, 2], [7, 4], [7, 8], [7, 7], [7, 5]],
        [[5, 1], [5, 2], [5, 4], [5, 8], [5, 7], [5, 5]],
      ]

      nested_charge = [
        [[3, 3], [3, 6], [3, 9]],
        [[6, 3], [6, 6], [6, 9]],
        [[9, 3], [9, 6], [9, 9]],
      ]

      ## Choosing the first index value for vortex based loop.
      row_options_vortex = [0, 1, 2, 3, 4, 5]
      col_options_vortex = [0, 1, 2, 3, 4, 5]
      arr_options_vortex = [0, 1]

      v_cur_row = row_options_vortex.sample
      v_cur_col = col_options_vortex.sample
      v_cur_arr = arr_options_vortex.sample

      ## Choosing the first index value for charge based loop.
      row_options_charge = [0, 1, 2]
      col_options_charge = [0, 1, 2]
      arr_options_charge = [0, 1]

      c_cur_row = row_options_charge.sample
      c_cur_col = col_options_charge.sample
      c_cur_arr = arr_options_charge.sample

      chosen_vortex_value = nested_vortex[v_cur_row][v_cur_col][v_cur_arr]
      chosen_charge_value = nested_charge[c_cur_row][c_cur_col][c_cur_arr]

      puts chosen_vortex_value
      puts chosen_charge_value

      ## Vortex Loop
      chosen_vortex_value.times do 
        possible_lines = File.readlines("lib/npc/tourguide/possible_lines.txt")
        size_limit     = possible_lines.size.to_i
        index          = 0 

        ideal_line = possible_lines[chosen_vortex_value].to_s

        size_limit.times do
          current_line = possible_lines[index].to_s

          if current_line == ideal_line
             File.open("lib/npc/tourguide/learned_lines.txt", "a") { |f|
               f.puts current_line
             }
          else
            #puts "> Current line did not match the ideal dialogue line..."
          end

          index = index + 1
        end

        index = 0
      end

      ## Charge Loop
      chosen_charge_value.times do
        learned_lines  = File.readlines("lib/npc/tourguide/learned_lines.txt")
        size_limit     = learned_lines.size.to_i
        index          = 0 

        ideal_line = learned_lines[chosen_vortex_value].to_s

        size_limit.times do
          #puts "> Match.."

          current_line = learned_lines[index].to_s

          if current_line == ideal_line
             File.open("lib/npc/tourguide/reinforced_lines.txt", "a") { |f|
               f.puts current_line
             }
          else
            #puts "> Current line is not reinforced into longterm memory..."
          end

          index = index + 1
        end

        index = 0
      end

    end

  end
end
