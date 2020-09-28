#----------GEMS------------------------------------------


require 'colorize'
require 'tty-progressbar'
require 'mac/say'
require 'game_icons'
require 'squib'
require 'image_optim'
require 'image_optim_pack'



#------------------ART STYLES-----------------------------

def circle
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


random_array = ["square", "circle", "heart", "diamond"]
20.times do 
random_array.shuffle!
game_array = []
if random_array.sample == "square"
  square
  game_array.push "square"
  input = gets.chomp
  if input == 1 
    puts "Correct!"
    user_results["correct"] += 1
  elsif input == 0 
    puts "Correct!"
  else 
    puts "incorrect!"
  end
elsif random_array.sample == "diamond"
  diamond
  input = gets.chomp
  game_array.push "diamond"
  if input == 1  
    puts "Correct!"
    user_results["correct"] += 1
  elsif input == 0 
    puts "Correct!"
  else 
    puts "Incorrect!"
  end
elsif random_array.sample == "heart" 
    heart
    game_array.push "heart"
    input = gets.chomp
    if input == 1 
      puts "Correct!"
    elsif input == 0  
      puts "Correct!"
    else 
      puts "Incorrect!"
    end
elsif random_array.sample == "circle"
    circle
    game_array.push "circle"
    input = gets.chomp
    if input == 1 
      puts "Correct!"
    elsif input == 0  
      puts "Correct!"
    else 
      puts "Incorrect!"
    end
else 
    puts "invalid"

  end
end



user_results = {"correct" => 0, "incorrect" => 0}


class Game
  attr_accessor :play

  $random_array = ["square", "circle", "heart", "diamond"]

  def initialize
    welcome_game
    play
    exit
  end

  def welcome_message
    
    puts centre_text("Welcome to the Memory Game Start Point!")
  
    puts "To win, match all symbols with the symbol IMMEDIATELY PREVIOUS TO IT."
    puts "If the symbol matches the previous symbol, PRESS 1"
    puts "If the symbol does NOT match, PRESS 0"
    puts "You have 45 seconds!"
    puts "Please be as accurate and fast as you can"
  end

  def clear_screen
    system('clear')
  end

  def pause
    sleep(2)
  end

  def welcome_game
    clear_screen
    welcome_message
    pause
  end

  def process_guess_pair
  end

  def play
    20.times do 
    random_array.shuffle!
    game_array = []
if random_array.sample == "square"
  square
  game_array.push "square"
  input = gets.chomp
  if input == 1 
    puts "Correct!"
    user_results["correct"] += 1
  elsif input == 0 
    puts "Correct!"
  else 
    puts "incorrect!"
  end
elsif random_array.sample == "diamond" 
  diamond
  input = gets.chomp
  game_array.push "diamond"
  if input == 1  
    puts "Correct!"
    user_results["correct"] += 1
  elsif input == 0 
    puts "Correct!"
  else 
    puts "Incorrect!"
  end
elsif random_array.sample == "heart" 
    heart
    game_array.push "heart"
    input = gets.chomp
    if input == 1 
      puts "Correct!"
    elsif input == 0  
      puts "Correct!"
    else 
      puts "Incorrect!"
    end
elsif random_array.sample == "circle"
    circle
    game_array.push "circle"
    input = gets.chomp
    if input == 1 
      puts "Correct!"
    elsif input == 0  
      puts "Correct!"
    else 
      puts "Incorrect!"
    end
else 
    puts "invalid"

  end
end

  end

  def exit
    menu
  end

end