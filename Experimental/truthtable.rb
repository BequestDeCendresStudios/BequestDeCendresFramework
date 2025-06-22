def selection
  row_options = [0, 1]
  col_options = [0, 1]
  arr_options = [0, 1]

  @cur_row = row_options.sample
  @cur_col = col_options.sample
  @cur_arr = arr_options.sample
end

conditions = [
  [["true",  "true"], ["true",  "false"]],
  [["false", "true"], ["false", "false"]],
], [
  [["false", "true"], ["false", "false"]],
  [["true",  "true"], ["true",  "false"]],
]

set_one = conditions[0]
set_two = conditions[1]

possible_sets = [
  [["s1", "s1"], ["s1", "s2"]],
  [["s2", "s1"], ["s2", "s2"]],
]

selection

current_set = possible_sets[@cur_row][@cur_col][@cur_arr]

if    "s1" == current_set
  selection

  current_truth = set_one[@cur_row][@cur_col][@cur_arr]

  puts "The current truth value is: #{current_truth}."
elsif "s2" == current_set
  selection

  current_truth = set_two[@cur_row][@cur_col][@cur_arr]

  puts "The current truth value is: #{current_truth}."
end
