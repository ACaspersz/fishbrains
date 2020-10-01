
module Views

    def self.welcome_message
        
        type_slow("Welcome to the Memory Game Start Point!")
        type_slow("To win, match all symbols with the symbol IMMEDIATELY PREVIOUS TO IT.")
        type_slow("If the symbol MATCHES the previous symbol, PRESS 1")
        type_slow("If the symbol does NOT match, PRESS 0")
        pause
        puts "You have 45 seconds!"
        puts "Please be as accurate and fast as you can"
        pause
    end

    def self.clear_screen
        system('clear')
    end

    def self.pause
        sleep(2)
    end
    
    def self.type_slow(words)
        words.each_char { |char| 
        print char
        sleep(0.02)
        }
        print "\n"
    end

    def self.border
        puts "*".colorize(:green)*70
    end

    def self.empty_border(number) 
        (number).times {puts "#{" "*35}"}
    end

    def self.clear
        puts " "
    end

    

    def self.welcome
        border
        puts "                                           ,
                                                                      

                        ╓▄████▄           ▓▓                                    
                      ▄▓       ▀▓       ,▓ ▓             ,▄▄▄                   
                     ╒▌         ▐▌     ╓▓  ▐▌       ╓▄█▀  ▄▀                    
                     ▐▌         ╟▌    ╓▓    ▓µ  ,▄█▀    ,▓         ╓▄█▀▓        
                      ▓▄       ▄▀▐▓   ▓      ▀▓█       ▓▀      ,▄█▀  ,▓         
               ╓▓▀`▀▓   ▀█▄▄██▀  ▓ ▓ ▐▌              ▄▀     ,▄▀     ▄▀          
               ▓    ▐▌           ▓  ▀▓             ,▓     ▄█      ,▓            
                ▀█▄█▀            ▓                ▄▀   ,▓▀       ▄▀             
           ▄▄µ                   ╟               ▓▀  ╓▓▀       ╓▓               
          ▓▄ ▓             ,╓▄▄███▓             ▓▌ ,▓▀          ▀▀▀█▄▄,,        
                ▓▀▀▓    ╓█▀       ▐▌      ,▄█▀   ▀▀▀█▄╥                  ▀▀█▄   
                ▀██▀  ╓▓           ▀▄   ╓█▀             ▀▓                 ▄▀   
                     ▄▓█▀▀▀▀▀▀█▄,   ▀▄,▓          ,,,     ▓            ╓▄█▀     
                  ,▓▀            ▀▄  ▀▀      ╓█▀▀     ▀▀█▄▓        ╓▄█▀         
                 ▄▀                ▓       ▄▀             ▀▓     ▓▓▄,           
                ╒▓   ,▓▓▓▓µ         ▓     ▓                 ▓        `▀▄        
                ╟▌  ╒▓▓▓▓▓▓▓        ▓    ▓        ,╓╥,      j▓    ,,╓▄▓▀        
                ▐▌  ╘▓▓▓▓▓▓▓▓       ▓    ▓      ▄▓▓▓▓▓▓▓     ▓▀▀▀▀              
                 ▀▄  ╙▓▓▓▓▓▓▌      ▄▀    ▓      ▓▓▓▓▓▓▓▓▌   ▐▌                  
             ,╓█▀▀▀▓,   ▀▀▀      ╓▓       ▓     ^▓▓▓▓▓▓▀   ╓▓                   
       ,,▄██▀       ▓▓█▄,   ,,▄█▀          ▀▓            ╓▓▀ ▀█▄                
   ╙▓▓▌             ▓∩          ╓█▀▀    ▀▀█µ `▀█▄╖,,╓▄▄█▓       ▀█▄             
       ▀▀▀▀██▓ ,▄█▀▀▀▓         ▓            ▓         ╓▓▌          ▀▀█▄         
            ▐█▀       ▓µ       ▓   ▀▀▀▀▀▀  ╓▓       ╓▓▀  ▀█▄   ]▓▄╖,    ▀▓▓     
                        ▀▄,      ▀█▄▄▄▄▄▄█▀     ,▄█▀        ▀▓, ▀▌              
                           ▀▀█▄╖,,      ,,,╥▄█▀▀               ▀▄▓▌         

 ".colorize(:light_red)
        puts "
    
███████╗██╗███████╗██╗  ██╗    ██████╗ ██████╗  █████╗ ██╗███╗   ██╗███████╗
██╔════╝██║██╔════╝██║  ██║    ██╔══██╗██╔══██╗██╔══██╗██║████╗  ██║██╔════╝
█████╗  ██║███████╗███████║    ██████╔╝██████╔╝███████║██║██╔██╗ ██║███████╗
██╔══╝  ██║╚════██║██╔══██║    ██╔══██╗██╔══██╗██╔══██║██║██║╚██╗██║╚════██║
██║     ██║███████║██║  ██║    ██████╔╝██║  ██║██║  ██║██║██║ ╚████║███████║
╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝╚══════╝
                                                                            
    ".colorize(:blue)                                                                                             
    
        border
        type_slow("Hi #{$user_name}, get excited to train your brain!")
        pause
        prompt1 = TTY::Prompt.new
        prompt1.keypress("------------------------ PRESS ANY KEY TO CONTINUE --------------------------\n
                                Taking you to the menu in :countdown ...".colorize(:red), timeout: 5)
    end

end