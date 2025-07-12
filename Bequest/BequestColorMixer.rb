module BequestColorMixer
  class ColorSynthesis
    def self.create_palette
      color_set = File.readlines("Colors/mycolors.txt")

      first_color = color_set.sample.strip
      second_color = color_set.sample.strip
      third_color = color_set.sample.strip
      fourth_color = color_set.sample.strip

      puts "Inputting colors into mixer vectors..."

      puts first_color

      open("_input/first_color.txt", "w") { |f|
        f.puts first_color
      }

      puts second_color

      open("_input/second_color.txt", "w") { |f|
        f.puts second_color
      }

      puts third_color

      open("_input/third_color.txt", "w") { |f|
        f.puts third_color
      }

      puts fourth_color

      open("_input/fourth_color.txt", "w") { |f|
        f.puts fourth_color
      }

      sleep(1.5)
    end

    def self.first_mixer
      require "digest"

      first_hex  = File.read("_input/first_color.txt").strip.to_s
      second_hex = File.read("_input/second_color.txt").strip.to_s
      md5        = Digest::MD5.new

      combined_hexes = first_hex + second_hex

      new_mixture = md5.update combined_hexes

      @f_first_hex  = "#" +  new_mixture[0] +  new_mixture[1] +  new_mixture[2] +  new_mixture[3] +  new_mixture[4] +  new_mixture[5]
      @f_second_hex = "#" +  new_mixture[6] +  new_mixture[7] +  new_mixture[8] +  new_mixture[9] + new_mixture[10] + new_mixture[11]
      @f_third_hex  = "#" + new_mixture[12] + new_mixture[13] + new_mixture[14] + new_mixture[15] + new_mixture[16] + new_mixture[17]
      @f_fourth_hex = "#" + new_mixture[18] + new_mixture[19] + new_mixture[20] + new_mixture[21] + new_mixture[22] + new_mixture[23]
      @f_fifth_hex  = "#" + new_mixture[24] + new_mixture[25] + new_mixture[26] + new_mixture[27] + new_mixture[28] + new_mixture[29]

      File.open("_results/first_mix.txt", "w") { |f|
        f.puts @f_first_hex
        f.puts @f_second_hex
        f.puts @f_third_hex
        f.puts @f_fourth_hex
        f.puts @f_fifth_hex
      }

      puts "##{@f_first_hex} ##{@f_second_hex} ##{@f_third_hex} ##{@f_fourth_hex} ##{@f_fifth_hex}"
    end

    def self.second_mixer
      require "digest"

      md5        = Digest::MD5.new

      @second_mixture = @s_first_hex + @s_second_hex + @s_third_hex + @s_fourth_hex + @s_fifth_hex

      new_mixture = md5.update new_mixture

      @s_first_hex  = "#" +  new_mixture[0] +  new_mixture[1] +  new_mixture[2] +  new_mixture[3] +  new_mixture[4] +  new_mixture[5]
      @s_second_hex = "#" +  new_mixture[6] +  new_mixture[7] +  new_mixture[8] +  new_mixture[9] + new_mixture[10] + new_mixture[11]
      @s_third_hex  = "#" + new_mixture[12] + new_mixture[13] + new_mixture[14] + new_mixture[15] + new_mixture[16] + new_mixture[17]
      @s_fourth_hex = "#" + new_mixture[18] + new_mixture[19] + new_mixture[20] + new_mixture[21] + new_mixture[22] + new_mixture[23]
      @s_fifth_hex  = "#" + new_mixture[24] + new_mixture[25] + new_mixture[26] + new_mixture[27] + new_mixture[28] + new_mixture[29]

      File.open("_results/second_mix.txt", "w") { |f|
        f.puts @s_first_hex
        f.puts @s_second_hex
        f.puts @s_third_hex
        f.puts @s_fourth_hex
        f.puts @s_fifth_hex
      }

      puts "##{@s_first_hex} ##{@s_second_hex} ##{@s_third_hex} ##{@s_fourth_hex} ##{@s_fifth_hex}"
    end

    def self.final_mixer
      require "digest"

      md5        = Digest::MD5.new

      @final_mixture = @s_first_hex + @s_second_hex + @s_third_hex + @s_fourth_hex + @s_fifth_hex

      new_mixture = md5.update new_mixture

      @t_first_hex  = "#" +  new_mixture[0] +  new_mixture[1] +  new_mixture[2] +  new_mixture[3] +  new_mixture[4] +  new_mixture[5]
      @t_second_hex = "#" +  new_mixture[6] +  new_mixture[7] +  new_mixture[8] +  new_mixture[9] + new_mixture[10] + new_mixture[11]
      @t_third_hex  = "#" + new_mixture[12] + new_mixture[13] + new_mixture[14] + new_mixture[15] + new_mixture[16] + new_mixture[17]
      @t_fourth_hex = "#" + new_mixture[18] + new_mixture[19] + new_mixture[20] + new_mixture[21] + new_mixture[22] + new_mixture[23]
      @t_fifth_hex  = "#" + new_mixture[24] + new_mixture[25] + new_mixture[26] + new_mixture[27] + new_mixture[28] + new_mixture[29]

      File.open("_results/third_mix.txt", "w") { |f|
        f.puts @t_first_hex
        f.puts @t_second_hex
        f.puts @t_third_hex
        f.puts @t_fourth_hex
        f.puts @t_fifth_hex
      }

      puts "##{@t_first_hex} ##{@t_second_hex} ##{@t_third_hex} ##{@t_fourth_hex} ##{@t_fifth_hex}"
    end

    def self.first_result_confidence
      first_result         = File.readlines("_results/first_mix.txt")
      first_result_counter = first_result / 1
      first_size_limit     = first_result.size.to_i
      first_index          = 0

      second_result         = File.readlines("_results/second_mix.txt")
      second_result_counter = second_result / 1
      second_size_limit     = first_result.size.to_i
      second_index          = 0

      third_result         = File.readlines("_results/third_mix.txt")
      third_result_counter = third_result / 1
      third_size_limit     = first_result.size.to_i
      third_index          = 0

      puts "\nFirst Color Mix Stack"
      first_result_size_limit.times do
        puts "#{first_result[first_index]} #{first_result_counter}"

        first_index = first_index + 1
      end

      puts "\nSecond Color Mix Stack"
      second_result_size_limit.times do
        puts "#{second_result[second_index]} #{second_result_counter}"

        second_index = second_index + 1
      end

      puts "\nThird Color Mix Stack"
      third_result_size_limit.times do
        puts "#{third_result[third_index]} #{third_result_counter}"

        first_index = first_index + 1
      end

      case first_result_count
      when 0.001..0.033; puts "The confidence for this color is low."
      when 0.034..0.050; puts "The confidence for this color is mild."
      when 0.051..0.075; puts "The confidence for this color is medium."
      when 0.076..1.000; puts "The confidence for this color is high."
      else
        puts "The strength of first result is off the charts."
      end

      case second_result_count
      when 0.001..0.033; puts "The confidence for this color is low."
      when 0.034..0.050; puts "The confidence for this color is mild."
      when 0.051..0.075; puts "The confidence for this color is medium."
      when 0.076..1.000; puts "The confidence for this color is high."
      else
        puts "The strength of second result is off the charts."
      end

      case third_result_count
      when 0.001..0.033; puts "The confidence for this color is low."
      when 0.034..0.050; puts "The confidence for this color is mild."
      when 0.051..0.075; puts "The confidence for this color is medium."
      when 0.076..1.000; puts "The confidence for this color is high."
      else
        puts "The strength of third result is off the charts."
      end
    end
  end
end
