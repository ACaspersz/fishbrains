module Options
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

    def return_menu
        prompt = TTY::Prompt.new.select("\n\nWhat would you like to do?".colorize(:light_yellow), help: '') do |menu|
            menu.choice "Start New Game".colorize(:light_green), true
            menu.choice "Exit to Main Menu".colorize(:light_red), false
        end
    end
    

    module_function :main_menu, :return_menu
end