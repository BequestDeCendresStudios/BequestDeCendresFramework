module BequestPoetry
  class CreatePoem
    def self.correct_dataset
      poetry = File.read("_narrative/poetry/input.txt").strip.to_s

      removed_line = poetry.gsub("[  ]", "")
      removed_line = removed_line.gsub("

    ", "
    ")

      open("_narrative/poetry/input.txt", "w") { |f|
        f.puts removed_line
      }
    end

    def self.generate
      ran_1  = rand(5)
      ran_2  = rand(10)
      ran_3  = rand(24)
      ran_4  = rand(35)
      ran_5  = rand(13)
      ran_6  = rand(24)
      ran_7  = rand(13)
      ran_8  = rand(14)
      ran_9  = rand(21)
      ran_10 = rand(12)
      ran_11 = rand(37)
      ran_12 = rand(21)

      poem1  = File.readlines("MyPoems/hafestranfolksong.txt")
      poem2  = File.readlines("MyPoems/ravenrose.txt")
      poem3  = File.readlines("MyPoems/seguidilladiishamisen.txt")
      poem4  = File.readlines("MyPoems/selfdoubt.txt")
      poem5  = File.readlines("MyPoems/anthemadiihafestra.txt")
      poem6  = File.readlines("MyPoems/fromglasstograss.txt")
      poem7  = File.readlines("MyPoems/midnightsunset.txt")
      poem8  = File.readlines("MyPoems/disillussionmusicbox.txt")
      poem9  = File.readlines("MyPoems/lebandittezoku.txt")
      poem10 = File.readlines("MyPoems/songbirdsandgolems.txt")
      poem11 = File.readlines("MyPoems/vindicatednihilists.txt")
      poem12 = File.readlines("MyPoems/mournandfast.txt")

      line_1  =   poem1[ran_1].to_s.strip
      line_2  =   poem2[ran_2].to_s.strip
      line_3  =   poem3[ran_3].to_s.strip
      line_4  =   poem4[ran_4].to_s.strip
      line_5  =   poem5[ran_5].to_s.strip
      line_6  =   poem6[ran_6].to_s.strip
      line_7  =   poem7[ran_7].to_s.strip
      line_8  =   poem8[ran_8].to_s.strip
      line_9  =   poem9[ran_9].to_s.strip
      line_10 = poem10[ran_10].to_s.strip
      line_11 = poem11[ran_11].to_s.strip
      line_12 = poem12[ran_12].to_s.strip

      line_list = [ line_1,   line_2,
                    line_3,   line_4,
                    line_5,   line_6,
                    line_7,   line_8,
                    line_9,  line_10,
                    line_11, line_12,
                  ]

      random_line = line_list

      row = 0

      iteration = random_line.size.to_i

      open("_narrative/poetry/input.txt", "w") { |f|
        #puts "## #{date_title}"

        iteration.times do
          line = random_line[row].to_s

          f.print "[ "
          f.print line #.strip
          f.puts " ]"

          row = row + 1
        end
      }

      row = 0

      open("_imaginedpath/poetry/generated_poem.txt", "w") { |f|
        #puts "## #{date_title}"

        iteration.times do

          puts random_line[row] #.strip
          #puts " [ #{random_line[row]}, 0.004366812 ]"

          #puts random_line[row] #.strip
          f.puts random_line[row] #.strip

          row = row + 1
        end
      }

      #system("trans :fr file://_imaginedpath/random/input.txt > _imaginedpath/random/translated.txt")

      sleep(1.5)

      BequestPoetry::CreatePoem.correct_dataset
    end
  end
end
