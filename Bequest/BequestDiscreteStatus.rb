# 0 Twilight
# 1 Dawn
# 2 Morning
# 3 Afternoon
# 4 Dusk
# 5 Night

#                      0   1   2   3   4   5
# 0 fully closed     0,0 0,1 0,2 0,3 0,4 0,5
# 1 largely closed   1,0 1,1 1,2 1,3 1,4 1,5
# 2 half way closed  2,0 2,1 2,2 2,3 2,4 2,5
# 3 largely open     3,0 3,1 3,2 3,3 3,4 3,5
# 4 fully open       4,0 4,1 4,2 4,3 4,4 4,5
# 5 Door Torn Off    5,0 5,1 5,2 5,3 5,4 5,5

# Most Common Situations
# [0][0][0][0] Night, Door Fully Closed
# [2][2][2][2] Morning, Half Way Closed 
# [3][3][3][3] Afternoon, Largely Open
# [4][4][4][4] Dusk, Fully Open
# [5][5][5][5] Night, Door Torn Off

module BequestStatus

  class Log
    def self.doorstatus
      discrete_state = [
        [[0,0], [0,1], [0,2], [0,3], [0,4], [0,5]],
        [[1,0], [1,1], [1,2], [1,3], [1,4], [1,5]],
        [[2,0], [2,1], [2,2], [2,3], [2,4], [2,5]],
        [[3,0], [3,1], [3,2], [3,3], [3,4], [3,5]],
        [[4,0], [4,1], [4,2], [4,3], [4,4], [4,5]],
        [[5,0], [5,1], [5,2], [5,3], [5,4], [5,5]],
      ], [
        [[0,0], [0,1], [0,2], [0,3], [0,4], [0,5]],
        [[1,0], [1,1], [1,2], [1,3], [1,4], [1,5]],
        [[2,0], [2,1], [2,2], [2,3], [2,4], [2,5]],
        [[3,0], [3,1], [3,2], [3,3], [3,4], [3,5]],
        [[4,0], [4,1], [4,2], [4,3], [4,4], [4,5]],
        [[5,0], [5,1], [5,2], [5,3], [5,4], [5,5]],
      ], [
        [[0,0], [0,1], [0,2], [0,3], [0,4], [0,5]],
        [[1,0], [1,1], [1,2], [1,3], [1,4], [1,5]],
        [[2,0], [2,1], [2,2], [2,3], [2,4], [2,5]],
        [[3,0], [3,1], [3,2], [3,3], [3,4], [3,5]],
        [[4,0], [4,1], [4,2], [4,3], [4,4], [4,5]],
        [[5,0], [5,1], [5,2], [5,3], [5,4], [5,5]],
      ], [
        [[0,0], [0,1], [0,2], [0,3], [0,4], [0,5]],
        [[1,0], [1,1], [1,2], [1,3], [1,4], [1,5]],
        [[2,0], [2,1], [2,2], [2,3], [2,4], [2,5]],
        [[3,0], [3,1], [3,2], [3,3], [3,4], [3,5]],
        [[4,0], [4,1], [4,2], [4,3], [4,4], [4,5]],
        [[5,0], [5,1], [5,2], [5,3], [5,4], [5,5]],
      ], [
        [[0,0], [0,1], [0,2], [0,3], [0,4], [0,5]],
        [[1,0], [1,1], [1,2], [1,3], [1,4], [1,5]],
        [[2,0], [2,1], [2,2], [2,3], [2,4], [2,5]],
        [[3,0], [3,1], [3,2], [3,3], [3,4], [3,5]],
        [[4,0], [4,1], [4,2], [4,3], [4,4], [4,5]],
        [[5,0], [5,1], [5,2], [5,3], [5,4], [5,5]],
      ], [
        [[0,0], [0,1], [0,2], [0,3], [0,4], [0,5]],
        [[1,0], [1,1], [1,2], [1,3], [1,4], [1,5]],
        [[2,0], [2,1], [2,2], [2,3], [2,4], [2,5]],
        [[3,0], [3,1], [3,2], [3,3], [3,4], [3,5]],
        [[4,0], [4,1], [4,2], [4,3], [4,4], [4,5]],
        [[5,0], [5,1], [5,2], [5,3], [5,4], [5,5]],
      ]

      # Labels for time of day
      times_of_day = ["Twilight",      "Dawn",
                      "Morning",  "Afternoon",
                      "Dusk",         "Night",
      ]

      # Labels for door status.
      door_status = [
        "Fully Closed",
        "Largely Closed",
        "Half Way Closed",
        "Largely Open",
        "Fully Open",
        "Door Torn Off",
      ]

      # Input for 0
      tim_options = [0, 1, 2, 3, 4, 5]
      row_options = [0, 1, 2, 3, 4, 5]
      col_options = [0, 1, 2, 3, 4, 5]
      arr_options = [0, 1]

      ctime = tim_options.sample
      crow  = row_options.sample
      ccol  = col_options.sample
      carr  = arr_options.sample

      un  = discrete_state[ctime][crow][ccol][carr]

      # Input for 1
      tim_options = [0, 1, 2, 3, 4, 5]
      row_options = [0, 1, 2, 3, 4, 5]
      col_options = [0, 1, 2, 3, 4, 5]
      arr_options = [0, 1]

      ctime = tim_options.sample
      crow  = row_options.sample
      ccol  = col_options.sample
      carr  = arr_options.sample

      de  = discrete_state[ctime][crow][ccol][carr]

      # Input for 2
      tim_options = [0, 1, 2, 3, 4, 5]
      row_options = [0, 1, 2, 3, 4, 5]
      col_options = [0, 1, 2, 3, 4, 5]
      arr_options = [0, 1]

      ctime = tim_options.sample
      crow  = row_options.sample
      ccol  = col_options.sample
      carr  = arr_options.sample

      tr  = discrete_state[ctime][crow][ccol][carr]

      # Input for 3
      tim_options = [0, 1, 2, 3, 4, 5]
      row_options = [0, 1, 2, 3, 4, 5]
      col_options = [0, 1, 2, 3, 4, 5]
      arr_options = [0, 1]

      ctime = tim_options.sample
      crow  = row_options.sample
      ccol  = col_options.sample
      carr  = arr_options.sample

      qa  = discrete_state[ctime][crow][ccol][carr] #.to_i

      current_status = discrete_state[un][de][tr][qa].to_i
      current_time   = times_of_day[current_status]
      current_state  = door_status[current_status]

      puts "[#{un}][#{de}][#{tr}][#{qa}] #{current_time}, #{current_state}"
    end
  end
end
