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
# require_relative 'testing.rb'
require_relative 'game.rb'
require 'tty-prompt'

#
#----------------STYLING-----------------------------
 

def border
    puts "*".colorize(:green)*30
end

def empty_border(number) 
    (number).times {puts "#{" "*35}"}
  end

def clear
    puts " "
end

#Trying to centre text from some stackflow forum!
def centre_text(string)
    puts string.lines.map { |string| string.center(30)}.join("\n")
end

def type_slow(words)
  words.each_char { |char| 
  print char
  sleep(0.02)
  }
  print "\n"
end


#------------------ART STYLES-----------------------------

def circle
    clear_screen
    empty_border(3)
    puts "                          
                                                           

                    ▄▄▓▓▓▓▓▓▄▄                   
               ▄▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓              
            ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓            
          ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓          
        ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓        
       ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓       
      ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓      
      ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▌     
     ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓     
     ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓     
     ▀▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▌     
      ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓      
      ▀▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▌      
       ▀▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▀       
         ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▀        
          ▀▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▀          
             ▀▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▀▀            
                ▀▀▓▓▓▓▓▓▓▓▓▓▓▓▓▓▀▀                
                       ^▀▀▀                       

                                                  ".colorize(:green)
end

def square
    clear_screen
    empty_border(3)
    puts "   
            ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▌          
            ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▌          
            ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▌          
            ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▌          
            ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▌          
            ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▌          
            ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▌          
            ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▌          
            ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▌          
            ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▌          
            ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▌          
            ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▌          
            ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▌          
    ".colorize(:magenta)
end

def diamond
    clear_screen
    empty_border(3)
    puts "                                                                    
                        ▓▓                        
                       ▓▓▓▓                       
                      ▓▓▓▓▓▓                      
                    ▓▓▓▓▓▓▓▓▓▓                    
                   ▓▓▓▓▓▓▓▓▓▓▓▓                  
                 ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓                 
               ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓               
             ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓            
          ▄▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▌          
        ▀▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▀        
           ▀▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▀           
              ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▀             
                ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▀               
                  ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▀                 
                   ▀▓▓▓▓▓▓▓▓▓▓▀                   
                     ▓▓▓▓▓▓▓▓▀                    
                      ▓▓▓▓▓▓                      
                       ▀▓▓▓                       
                        ▀▓                        

                                                  ".colorize(:cyan)
end

def heart
    clear_screen
    empty_border(3)
    puts "
                                                  
            ▄▓▓▓▓▓▓▓▄        ╓▓▓▓▓▓▓▓▄       
        ,▓▓▓▓▓▓▓▓▓▓▓▓▓▄   ╓▓▓▓▓▓▓▓▓▓▓▓▓▓▄    
        ▄▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓   
        ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▌  
        ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▌  
        ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▌  
        ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓   
         ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓    
          ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓     
           ▀▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓      
            ^▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▀       
              █▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▀         
                ▀▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▀           
                  ▀▓▓▓▓▓▓▓▓▓▓▓▓▀             
                    ^▀▓▓▓▓▓▓▓▀               
                       █▓▓▀                  
                                         ".colorize(:red)
end

#--------------GAME METHODS-----------------------------

def pause
    sleep(2)
  end

  def clear_screen
    system('clear')
  end

#--------------WELCOME SCREEN SECTION---------------------
def welcome
    border
    puts centre_text("
    ███╗   ███╗███████╗███╗   ███╗ ██████╗ ██████╗ ██╗   ██╗     ██████╗  █████╗ ███╗   ███╗███████╗
    ████╗ ████║██╔════╝████╗ ████║██╔═══██╗██╔══██╗╚██╗ ██╔╝    ██╔════╝ ██╔══██╗████╗ ████║██╔════╝
    ██╔████╔██║█████╗  ██╔████╔██║██║   ██║██████╔╝ ╚████╔╝     ██║  ███╗███████║██╔████╔██║█████╗  
    ██║╚██╔╝██║██╔══╝  ██║╚██╔╝██║██║   ██║██╔══██╗  ╚██╔╝      ██║   ██║██╔══██║██║╚██╔╝██║██╔══╝  
    ██║ ╚═╝ ██║███████╗██║ ╚═╝ ██║╚██████╔╝██║  ██║   ██║       ╚██████╔╝██║  ██║██║ ╚═╝ ██║███████╗
    ╚═╝     ╚═╝╚══════╝╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝        ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝
    ")                                                                                             
    
    border
    type_slow("Hi #{$user_name}, get excited to train your brain!")
    prompt1 = TTY::Prompt.new
    prompt1.keypress("------------------------ PRESS ANY KEY TO CONTINUE --------------------------\n
                            Game begins automatically in :countdown ...".colorize(:red), timeout: 5)
end


#---------------------------------------------------
#                    MENU SCREEN                    #
#----------------------------------------------------

def menu
    
    centre_text("  PRESS 1 |  PRESS 2   | PRESS 3\n")
    puts "  #{"P L A Y".colorize(:cyan)} | #{"SEE STATS  ".colorize(:red)}| #{"E X I T".colorize(:magenta)}"
    
end


def main_menu
  border
      prompt2 = TTY::Prompt.new(active_color: :cyan)
      @prompt2menu = [
                  {"P L A Y" => -> do Game.new end},
                 #{'Show High Scores' => -> do high_scores end },
                  {"H E L P" => -> do help_menu end},
                  {"E X I T" => -> do exit end}
                   ]
      prompt2.select('Use ↑/↓ arrow keys, press Enter to select', @prompt2menu, help: " ", )
border
end #def main_menu end#


#----------------------------------------------------
#               MENU Start                           

begin 
    if ARGV.length == 0
        puts type_slow("Maybe my memory has gotten away from me....What was your name again?")
        $user_name = gets.chomp.to_s
    else $user_name = ARGV[0]
        ARGV.clear
        clear_screen
    end
#Need to put a rescue or raise error here!  
end
clear_screen

welcome



$play_counter = 0

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
 
    




