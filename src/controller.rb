# MAIN MENU
#WELCOME SCREEN
#first, prompt for name and save to ARGV
#Case state that will have 3 options, play, stats and exit
#If play, will initiate game
#If stats will go to stats menu
#If exit selected, exit game

#PLAY - start Game class? initialize conditions etc
#define game functions in definitions in the class
# in game play, generate random shapes, collect into an array
# during game, user is iterating through randomly generated shape array
# if user matches the shape, += 1 to correct array,
# if user does not match a symbol, add 1 to error array.
#----------GEMS------------------------------------------


require 'colorize'
require_relative 'game'
require 'tty-prompt'
require_relative 'views/views'
#
#---------------------------------------------
 


def main_menu
  Views::clear_screen
  
      prompt2 = TTY::Prompt.new(active_color: :cyan)
      @prompt2menu = [
                  {"P L A Y" => -> do Game.new end},
                 #{'Show High Scores' => -> do high_scores end },
                  {"T U T O R I A L" => -> do Views::welcome_message end},
                  {"S T A T S" => -> do puts "nothing here yet" end},
                  {"E X I T" => -> do exit end}
                   ]
      prompt2.select('Use ↑/↓ arrow keys, press Enter to select', @prompt2menu, help: " ", )

end 


#----------------------------------------------------
#              GAME Start                           

begin 
    if ARGV.length == 0
        puts Views::type_slow("Maybe my memory has gotten away from me....What was your name again?")
        $user_name = gets.chomp.to_s
    else $user_name = ARGV[0]
        ARGV.Views::clear
        Views::clear_screen
    end
#Need to put a rescue or raise error here!  
end

Views::clear_screen
Views::welcome

game = true
while game == true
    main_menu 
    selection = gets.chomp.to_i
    if selection == 1
        game = Game.new

    elsif selection == 2
        stats
    elsif selection == 3
        game = false
        exit
    else 
        puts "Incorrect value"
    end
   
end

    




