module StealthSpoonerisms
  class Contextual
    def self.match_to_anxiety
      spoonerisms = [
        [["Ham Sandwhich", "Ham Sandwhich"], ["Ham Sandwhich", "Sam Handwhich"], ["Ham Sandwhich", "Hach Sandwhim"]],
        [["Sam Handwhich", "Ham Sandwhich"], ["Sam Handwhich", "Sam Handwhich"], ["Sam Handwhich", "Hach Sandwhim"]],
        [["Hach Sandwhim", "Ham Sandwhich"], ["Hach Sandwhim", "Sam Handwhich"], ["Hach Sandwhim", "Hach Sandwhim"]],  
      ], [
        [["Very Niche", "Very Niche"], ["Very Niche", "Nery Viche"], ["Very Niche", "Viry Neche"]],
        [["Very Niche", "Very Niche"], ["Very Niche", "Nery Viche"], ["Very Niche", "Viry Neche"]],
        [["Viry Neche", "Very Niche"], ["Viry Neche", "Nery Viche"], ["Viry Neche", "Viry Neche"]],
      ], [
        [["Lick My Chops", "Lick My Chops"], ["Lick My Chops", "Cick My Lops"], ["Lick My Chops", "Cock My Hips"], ["Lick My Chops", "Lick My Cops"]],
        [["Cick My Lops",  "Lick My Chops"], ["Cick My Lops",  "Cick My Lops"], ["Cick My Lops",  "Cock My Hips"], ["Cick My Lops",  "Lick My Cops"]],
        [["Cock My Hips",  "Lick My Chops"], ["Cock My Hips",  "Cick My Lops"], ["Cock My Hips",  "Cock My Hips"], ["Cock My Hips",  "Lick My Cops"]],
        [["Lick My Cops",  "Lick My Chops"], ["Lick My Cops",  "Cick My Lops"], ["Lick My Cops",  "Cock My Hips"], ["Lick My Cops",  "Lick My Cops"]],
      ]

      nested_spoons = {
        "Ham Sandwhich"  => "Sam Handwhich",
        "Sand Handwhich" => "Hach Sandwhim",
        "Hach Sandwhim"  => "Ham Sandwhich",
      }, {
        "Very Niche" => "Nery Viche",
        "Nery Viche" => "Viry Neche",
        "Viry Neche" => "Very Niche",
      }, {
        "Lick My Chops" =>  "Cick My Lops",
        "Cick My Lops"  =>  "Cock My Hips",
        "Cock My Hips"  =>  "Lick My Cops",
        "Lick My Cops"  => "Lick My Chops",
      }

      context_window = [0, 1, 2, 3]
      cur_con        = context_window.sample

      if    cur_con == 0
        row_options    = [0, 1, 2]
        col_options    = [0, 1, 2]
        arr_options    = [0, 1]

        cur_row =    row_options.sample
        cur_col =    col_options.sample
        cur_arr =    arr_options.sample

        current_spoonerism = spoonisms[cur_con][cur_row][cur_col][cur_arr]
        current_table      = nested_spoons[cur_cun]

        puts current_table[current_spoonerism]

      elsif cur_con == 1
        row_options    = [0, 1, 2]
        col_options    = [0, 1, 2]
        arr_options    = [0, 1]

        cur_row =    row_options.sample
        cur_col =    col_options.sample
        cur_arr =    arr_options.sample

        current_spoonerism = spoonisms[cur_con][cur_row][cur_col][cur_arr]
        current_table      = nested_spoons[cur_cun]

        puts current_table[current_spoonerism]

      elsif cur_con == 2
        row_options    = [0, 1, 2]
        col_options    = [0, 1, 2]
        arr_options    = [0, 1]

        cur_row =    row_options.sample
        cur_col =    col_options.sample
        cur_arr =    arr_options.sample

        current_spoonerism = spoonisms[cur_con][cur_row][cur_col][cur_arr]
        current_table      = nested_spoons[cur_cun]

        puts current_table[current_spoonerism]

      end
    end
  end
end
