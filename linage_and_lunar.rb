######################################################################
#                    Lineage And Lunar Mechanics                     #
######################################################################
# This uses lineage as a way to determine how aspects of characters  #
# are chosen rather than using a character selection screen. The     #
# lunar cycle also influences character sanity level beyond how      #
# diety worships effects a player's trust and sanity.                #
######################################################################
#def set_global_stats
  #Stealth::LunarCalender.global_stats
#end

#def lunar_cycle
#  Stealth::LunarCalender.global_stats
#end

def lineage_selection
  ## Hemato and Ehena's linage
  hem_or_eh = [
    [["hemato", "hemato"], ["hemato", "ehena"]],
    [["ehena",  "hemato"], ["ehena",  "ehena"]],
  ]

  row_options = [0, 1]
  col_options = [0, 1]
  arr_options = [0, 1]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample

  ## Chosen Lineage
  current_lineage = hem_or_eh[cur_row][cur_col][cur_arr]

  if    "hemato" == current_lineage; Stealth::LineageSelection.hemato_tomato
  elsif "ehena"  == current_lineage; Stealth::LineageSelection.ehena_marie
  else
    Stealth::LineageSelection.hemato_tomato
  end
end

def choose_name
  Stealth::LineageSelection.hemato_tomato
end
