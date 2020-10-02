
#----------GEMS------------------------------------------
require_relative './model/game'
require_relative './views/views'
# require_relative './views/highscores'
require_relative 'options_view'
require 'colorize'
require 'tty-prompt'

 



#----------------------------------------------------
#              GAME Start                           
   def game_start
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
            Options::main_menu
            #Need to put a rescue or raise error here!  
        end
    end
    


game_start

