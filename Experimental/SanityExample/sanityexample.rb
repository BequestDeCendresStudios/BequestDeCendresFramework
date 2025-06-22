fruit = [
  [["apple pie",    "apple pie"], ["apple pie",    "banana bread"], ["apple pie",    "grape salad"]],
  [["banana bread", "apple pie"], ["banana bread", "banana bread"], ["banana bread", "grape salad"]],
  [["grape salad",  "apple pie"], ["grape salad",  "banana bread"], ["grape salad",  "grape salad"]],
], [
  [["ppple aie",    "ppple aie"], ["ppple aie",    "brnana baead"], ["ppple aie",    "srape galad"]],
  [["brnana baead", "ppple aie"], ["brnana baead", "brnana baead"], ["brnana baead", "srape galad"]],
  [["srape galad",  "ppple aie"], ["srape galad",  "brnana baead"], ["srape galad",  "srape galad"]],
], [
  [["aie ppple",    "aie ppple"], ["aie ppple",    "baead brnana"], ["aie ppple",    "galad srape"]],
  [["baead brnana", "aie ppple"], ["baead brnana", "baead brnana"], ["baead brnana", "galad srape"]],
  [["galad srape",  "aie ppple"], ["galad srape",  "baead brnana"], ["galad srape",  "galad srape"]],
]

sanity_state1 = fruit[0]
sanity_state2 = fruit[1]
sanity_state3 = fruit[2]

s1_row_options = [0, 1, 2]
s1_col_options = [0, 1, 2]
s1_arr_options = [0, 1, 2]

s1row = s1_row_options.sample
s1col = s1_col_options.sample
s1arr = s1_arr_options.sample

## Standard Sanity Level
level_1_sanity = fruit[s1row][s1col][s1arr]

s2_row_options = [0, 1, 2]
s2_col_options = [0, 1, 2]
s2_arr_options = [0, 1, 2]

s2row = s2_row_options.sample
s2col = s2_col_options.sample
s2arr = s2_arr_options.sample

## First Sanity Losss
level_2_sanity = fruit[s2row][s2col][s2arr]

s3_row_options = [0, 1, 2]
s3_col_options = [0, 1, 2]
s3_arr_options = [0, 1, 2]

s3row = s1_row_options.sample
s3col = s1_col_options.sample
s3arr = s1_arr_options.sample

## Third Sanity Loss
level_3_sanity = fruit[s3row][s3col][s3arr]
