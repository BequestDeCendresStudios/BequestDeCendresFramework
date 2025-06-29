require_relative "Bequest/StealthMaid.rb"

###############################################################################
#                              Weapon Statistics                              #
###############################################################################
# These statistics help inform and train the maid to being a better advisor   #
# help you clean the mansion, and fight monsters that are under the basement. #
# The new is in reference to the Brother's Grim fairy tale Maid Maleen        #
###############################################################################
def shovel_statistics
  Stealth::ToolStatistics.panel
  Stealth::ToolStatistics.shovel_stats
end

def hammer_statistics
  Stealth::ToolStatistics.panel
  Stealth::ToolStatistics.hammer_stats
end

def toolset_statistics
  Stealth::ToolStatistics.panel
  Stealth::ToolStatistics.toolset_stats
end

def magic_wand_statistics
  Stealth::ToolStatistics.panel
  Stealth::ToolStatistics.wand_stats
end

index = 0

#            shovel  hammer  toolset  magicwand
# shovel     s,s     s,h     s,t      s,m
# hammer     h,s     h,h     h,t      h,m
# toolset    t,s     t,h     t,t      t,m
# magicwand  m,s     m,h     m,t      m,m

loop do
  maid_actions = [
    [["shovel",    "shovel"], ["shovel",    "hammer"], ["shovel",    "toolset"], ["shovel",    "magicwand"]],
    [["hammer",    "shovel"], ["hammer",    "hammer"], ["hammer",    "toolset"], ["magicwand", "magicwand"]],
    [["toolset",   "shovel"], ["toolset",   "hammer"], ["toolset",   "toolset"], ["toolset",   "magicwand"]],
    [["magicwand", "shovel"], ["magicwand", "hammer"], ["magicwand", "toolset"], ["magicwand", "magicwand"]],
  ]

  row_options = [0, 1, 2, 3]
  col_options = [0, 1, 2, 3]
  arr_options = [0, 1]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample

  current_action = maid_actions[cur_row][cur_col][cur_arr]

  if       "shovel" == current_action
  elsif    "hammer" == current_action
  elsif   "toolset" == current_action
  elsif "magicwand" == current_action
  else
    puts "BIANCA: Nothing left to clean. Or something went wrong."

    break
  end
end
