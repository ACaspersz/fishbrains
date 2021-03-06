
#----------GEMS------------------------------------------
require_relative '../model/game'
require_relative '../views/views'
# require_relative './views/highscores'
require_relative '../views/options_view'
require 'colorize'
require 'tty-prompt'
require 'rspec'

#----------------------------------------------------
#              GAME Start                           
class StartGame
    attr_accessor :game_start
    
    def self.game_start
        begin 
            if ARGV.length == 0
                puts Views::type_slow("Maybe my memory has gotten away from me....What was your name again?")
                $user_name = gets.chomp.to_s
            else 
                $user_name = ARGV[0]
                
            end
            if $user_name == ''
                puts "User name required!"
                $user_name = gets.chomp.to_s
            end
        end 
        Views::clear_screen
        Views::welcome
        Options::main_menu
    end
end
    
    


StartGame.game_start

