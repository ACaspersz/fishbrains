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
require 'tty-progressbar'
require 'mac/say'



#
#----------------STYLING-----------------------------
 

def border
    puts "*".colorize(:green)*30
end

def empty_border(number) 
    (number).times {puts "=#{" "*28}="}
  end

def clear
    puts " "
end

#Trying to centre text from some stackflow forum!
def centre_text(string)
    puts string.lines.map { |string| string.center(30)}.join("\n")
end

#------------------ART STYLES-----------------------------

def circle
    clear
    empty_border(2)
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
    puts "
                                                  
            ▄▓▓▓▓▓▓▓▄        ╓▓▓▓▓▓▓▓▄       
        ,▓▓▓▓▓▓▓▓▓▓▓▓▓▄  ╓▓▓▓▓▓▓▓▓▓▓▓▓▓▄    
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

#--------------WELCOME SCREEN SECTION---------------------
def welcome
    border
    puts "
    ███╗   ███╗███████╗███╗   ███╗ ██████╗ ██████╗ ██╗   ██╗     ██████╗  █████╗ ███╗   ███╗███████╗
    ████╗ ████║██╔════╝████╗ ████║██╔═══██╗██╔══██╗╚██╗ ██╔╝    ██╔════╝ ██╔══██╗████╗ ████║██╔════╝
    ██╔████╔██║█████╗  ██╔████╔██║██║   ██║██████╔╝ ╚████╔╝     ██║  ███╗███████║██╔████╔██║█████╗  
    ██║╚██╔╝██║██╔══╝  ██║╚██╔╝██║██║   ██║██╔══██╗  ╚██╔╝      ██║   ██║██╔══██║██║╚██╔╝██║██╔══╝  
    ██║ ╚═╝ ██║███████╗██║ ╚═╝ ██║╚██████╔╝██║  ██║   ██║       ╚██████╔╝██║  ██║██║ ╚═╝ ██║███████╗
    ╚═╝     ╚═╝╚══════╝╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝        ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝
    "                                                                                             
    
    border
    puts "Hi #{$user_name}, get excited to train your brain!"
end


#---------------------------------------------------
#                    MENU SCREEN                    #
#----------------------------------------------------

def menu
    border
    centre_text("  PRESS 1 |  PRESS 2   | PRESS 3\n")
    puts "  #{"P L A Y".colorize(:cyan)} | #{"SEE STATS  ".colorize(:red)}| #{"E X I T".colorize(:magneta)}"
    border
end


#----------------------------------------------------
#               MENU Start                           

begin 
    if ARGV.length == 0
        puts "Maybe my memory has gotten away from me....What was your name again?"
        $user_name = gets.chomp.to_s
    else $user_name = ARGV[0]
        ARGV.clear
    end

    
end

welcome


app = true
if app == true

    menu
    selection = gets.chomp.to_i

    if selection == 1
        play
    elsif selection == 2
        stats
    elsif selection == 3
        exit
        app = false
    else 
        puts "Error incorrect value"
    end


end

random_array = ["square", "circle", "heart", "diamond"]
20.times do 
random_array.shuffle!
if random_array.sample == "square"
  square
elsif random_array.sample == "diamond"
  diamond
  elsif random_array.sample == "heart"
    heart
  else
    circle
  end
end