
#----------GEMS------------------------------------------
require_relative './model/game'
require_relative './views/views'
# require_relative './views/highscores'

require 'colorize'
require 'tty-prompt'

#
#---------------------------------------------
 


def main_menu
  Views::clear_screen
  
      prompt2 = TTY::Prompt.new(active_color: :cyan)
      @prompt2menu = [
                  {"P L A Y" => -> do Game.new end},
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
            Views::clear_screen
            Views::welcome
            main_menu
            #Need to put a rescue or raise error here!  
        end
   
    




