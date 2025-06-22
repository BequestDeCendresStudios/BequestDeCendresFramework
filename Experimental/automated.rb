loop do
  actions = {
    "scoop"  =>  "break",    "break"  => "disarm",
    "disarm" =>   "find",    "find"   =>  "shine",
    "shine"  =>   "cast",    "cast"   =>  "scoop",
  }

  print "What actions would you like to perform? << "
  choice = gets.chomp

  # Predicts a failure conditions.
  failure_actions = [
    [["scoop",  "scoop"], ["scoop",  "break"], ["scoop",  "disarm"], ["scoop",  "find"], ["scoop",  "shine"], ["scoop",  "cast"]],
    [["break",  "scoop"], ["break",  "break"], ["break",  "disarm"], ["break",  "find"], ["break",  "shine"], ["break",  "cast"]],
    [["disarm", "scoop"], ["disarm", "break"], ["disarm", "disarm"], ["disarm", "find"], ["disarm", "shine"], ["disarm", "cast"]],
    [["find",   "scoop"], ["find",   "break"], ["find",   "disarm"], ["find",   "find"], ["find",   "shine"], ["find",   "cast"]],
    [["shine",  "scoop"], ["shine",  "break"], ["shine",  "disarm"], ["shine",  "find"], ["shine",  "shine"], ["shine",  "cast"]],
    [["cast",   "scoop"], ["cast",   "break"], ["cast",   "disarm"], ["cast"  , "find"], ["cast",   "shine"], ["cast",   "cast"]],
  ]

  row_options = [0, 1, 2, 3, 4, 5]
  col_options = [0, 1, 2, 3, 4, 5]
  arr_options = [0, 1]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample

  specific_failure = failure_actons[cur_row][cur_col][cur_arr]

  if    actions[specific_failure] == choice           # failure
    puts "The #{choice} of #{your_name} was not successful. #{classification[0]} #{classification[1]}"

  elsif actions[choice]           == specific_failure # success
    puts "The #{choice} of #{your_name} was successful. #{classification[0]} #{classification[1]}"

  elsif specific_failure          == choice           # partial.

    puts "The #{choice} of #{your_name} was almost successful. #{classification[0]} #{classification[1]}"
  else
    puts ">> No action was specified..."
  end

  success_metrics = {
    "failure" => "#{choice} was a failure.",
    "success" => "#{choice} was a success.",
  }, [
    [[0.25, 0.25], [0.25, 0.25]],
    [[0.25, 0.25], [0.25, 0.25]],
  ]

  success_rate = success_metrics[0]

  success_label = success_rate[player_action]

  if    success_label == "#{choice} was a failure."

    success_probability = success_metrics[1]

    success_rate = success_probability[0][0][0]
    failure_rate = 1 - success_rate

    puts "[#{success_label}, #{success_rate} / #{failure_rate}]"
  elsif success_label == "#{choice} was a success."

    success_probability = success_metrics[1]

    failure_rate = success_probability[0][0][0]
    success_rate = 1 - success_rate

    puts "[#{success_label}, #{success_rate} / #{failure_rate}]"
  else
    puts ">> Success metrics are not known."
  end

  sleep(1.5)
end
