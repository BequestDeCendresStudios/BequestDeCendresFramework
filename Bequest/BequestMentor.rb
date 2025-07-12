module BequestMentor
  class Mentor
    def self.mentor
      $your_name = "Sarah"

      dead_player_name   = File.readlines("lib/npc/dead_player_names.txt")
      dead_player_deaths = File.readlines("lib/npc/dead_player_deaths.txt")

      current_death_type = dead_player_deaths.sample.strip
      current_death_type_list = dead_player_deaths.sample.split(" ")

      mentor_name = dead_player_name.sample.strip

      puts "Mayor #{mentor_name}: I have knowledge to pass down to you. Previously I died #{current_death_type}, Remember not to croak #{current_death_type}."
      puts "#{$your_name}: Why did you stop going on adventures?"
      puts "Mayor #{mentor_name}: I had been the previous hero, and I wish for you not to make the same mistakes."
      puts "#{mentor_name} draws the final breath."
    end

    def self.mentor_labels
      require "decisiontree"

      dead_player_name   = File.readlines("lib/npc/dead_player_names.txt")
      mentor_name        = dead_player_name.sample.strip

      possible_inputs = [
        [[  0.5, 0.5], [  0.5, 25.0], [  0.5, 50.0], [  0.5, 75.0], [  0.5, 100.0]],
        [[ 25.0, 0.5], [ 25.0, 25.0], [ 25.0, 50.0], [ 25.0, 75.0], [ 25.0, 100.0]],
        [[ 50.0, 0.5], [ 50.0, 25.0], [ 50.0, 50.0], [ 50.0, 75.0], [ 50.0, 100.0]],
        [[ 75.0, 0.5], [ 75.0, 25.0], [ 75.0, 50.0], [ 75.0, 75.0], [ 75.0, 100.0]],
        [[100.0, 0.5], [100.0, 25.0], [100.0, 50.0], [100.0, 75.0], [100.0, 100.0]],
      ]

      row_options = [0, 1, 2, 3, 4]
      col_options = [0, 1, 2, 3, 4]
      arr_options = [0, 1]

      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      @current_input = possible_inputs[cur_row][cur_col][cur_arr]

      attributes = ["#{$your_name}"], ["#{mentor_name}"]

      training = [
        [  0.5,          "#{$your_name}: Why are you such a failure?"],
        [ 25.0,      "#{$your_name}: Can this wait for another time?"],
        [ 50.0,            "#{$your_name}: OK, maybe just this once."],
        [ 75.0,            "#{$your_name}: I guess I have some time."],
        [100.0, "#{$your_name}: Sensei, is there something you need?"],
      ], [
        [  0.5, "Mayor #{mentor_name}: You should be respectful to your elders, #{$your_name}. I have knowledge to pass down to you. Previously I died #{current_death_type}, Remember not to croak #{current_death_type}."],

        [ 25.0, "Mayor #{mentor_name}: There will always be plenty of time, excpet when you're old, #{$your_name}. I have knowledge to pass down to you. Previously I died #{current_death_type}, Remember not to croak #{current_death_type}."],

        [ 50.0, "Mayor #{mentor_name}: I assure you this will be worth your time, #{$your_name}. I have knowledge to pass down to you. Previously I died #{current_death_type}, Remember not to croak #{current_death_type}."],

        [ 75.0, "Mayor #{mentor_name}: Absolutely, especially after I'm gone, #{$your_name}. I have knowledge to pass down to you. Previously I died #{current_death_type}, Remember not to croak #{current_death_type}."],

        [100.0, "Mayor #{mentor_name}: Yes, I have something important to tell you #{$your_name}. Previously I died #{current_death_type}, Remember not to croak #{current_death_type}."],
      ]

      dec_tree_configurations =    DecisionTree::ID3Tree.new(attributes[0], training[0], 1, :continuous),
                                   DecisionTree::ID3Tree.new(attributes[1], training[1], 1, :continuous).

      current_dectree1 = dec_tree_configurations[0]; current_dectree1.train
      current_dectree2 = dec_tree_configurations[1]; current_dectree2.train

      student_test = [@current_input, "#{$your_name}: OK, maybe just this once."]
      mentor_test  = [@current_input, "Mayor #{mentor_name}: I assure you this will be worth your time, #{$your_name}. I have knowledge to pass down to you. Previously I died #{current_death_type}, Remember not to croak #{current_death_type}."]

      @student_score = current_dectree1.predict(student_test)
      @mentor_score  = current_dectree2.predict(mentor_test)
    end

    def self.mentor_probability
      require "naive_bayes"

      wisdom = NaiveBayes.new(:student, :mentor)

      ## Student
      wisdom.train(:student,          "#{$your_name}: Why are you such a failure?", "disciple")
      wisdom.train(:student,      "#{$your_name}: Can this wait for another time?", "disciple")
      wisdom.train(:student,            "#{$your_name}: OK, maybe just this once.", "disciple")
      wisdom.train(:student,            "#{$your_name}: I guess I have some time.", "disciple")
      wisdom.train(:student, "#{$your_name}: Sensei, is there something you need?", "disciple")

      ## Mentor
      wisdom.train(:mentor, "Mayor #{mentor_name}: You should be respectful to your elders, #{$your_name}. I have knowledge to pass down to you. Previously I died #{current_death_type}, Remember not to croak #{current_death_type}.", "mentor")

      wisdom.train(:mentor, "Mayor #{mentor_name}: There will always be plenty of time, excpet when you're old, #{$your_name}. I have knowledge to pass down to you. Previously I died #{current_death_type}, Remember not to croak #{current_death_type}.", "mentor")

      wisdom.train(:mentor, "Mayor #{mentor_name}: I assure you this will be worth your time, #{$your_name}. I have knowledge to pass down to you. Previously I died #{current_death_type}, Remember not to croak #{current_death_type}.", "mentor")

      wisdom.train(:mentor, "Mayor #{mentor_name}: Absolutely, especially after I'm gone, #{$your_name}. I have knowledge to pass down to you. Previously I died #{current_death_type}, Remember not to croak #{current_death_type}.", "mentor")

      wisdom.train(:mentor, "Mayor #{mentor_name}: Yes, I have something important to tell you #{$your_name}. Previously I died #{current_death_type}, Remember not to croak #{current_death_type}.", "mentor")

      student_classification = wisdom.classify(@student_score)
      mentor_classification  = wisdom.classify(@mentor_score)

      ## Based on wisdom confidence level, determines what prize the player gets.
      student_confidence_label = student_classification[0]
      student_condidence_score = student_classification[1]
      mentor_confidence_label  = mentor_classification[0]
      mentor_condidence_score  = mentor_classification[1]

      possible_prizes = {
        "Mayor #{mentor_name}: You should be respectful to your elders, #{$your_name}. I have knowledge to pass down to you. Previously I died #{current_death_type}, Remember not to croak #{current_death_type}." => "Wooden Paddle Spanking",

        "Mayor #{mentor_name}: There will always be plenty of time, excpet when you're old, #{$your_name}. I have knowledge to pass down to you. Previously I died #{current_death_type}, Remember not to croak #{current_death_type}." => "Lump Of Coal",

        "Mayor #{mentor_name}: I assure you this will be worth your time, #{$your_name}. I have knowledge to pass down to you. Previously I died #{current_death_type}, Remember not to croak #{current_death_type}." => "Wooden Sword",

        "Mayor #{mentor_name}: Absolutely, especially after I'm gone, #{$your_name}. I have knowledge to pass down to you. Previously I died #{current_death_type}, Remember not to croak #{current_death_type}." => "Bronze Katana",

        "Mayor #{mentor_name}: Absolutely, especially after I'm gone, #{$your_name}. I have knowledge to pass down to you. Previously I died #{current_death_type}, Remember not to croak #{current_death_type}." => "Haute Couture Bag",

        "Mayor #{mentor_name}: Yes, I have something important to tell you #{$your_name}. Previously I died #{current_death_type}, Remember not to croak #{current_death_type}." => "Haunted Doll",
      }

      puts "Student Politeness: #{current_input}"
      puts "Student Competence: #{student_classification[0]} #{student_classification[1]}"

      your_prize = possible_prizes[mentor_confidence_label]

      puts "Congratulations, you won: #{your_prize}"
    end
  end
end
