

module Options
    def main_menu
        Views::clear_screen
        
            prompt2 = TTY::Prompt.new(active_color: :cyan)
            @prompt2menu = [
                        {"P L A Y" => -> do Game.new end},
                        {"T U T O R I A L" => -> do Views::game_howto end},
                        {"S T A T S" => -> do puts "nothing here yet" end},
                        {"E X I T" => -> do exit end}
                         ]
            prompt2.select('What would you like to do today? Use ↑/↓ arrow keys, press Enter to select', @prompt2menu, help: " ", )
      
    end 

    def return_menu
        prompt6 = TTY::Prompt.new
        @prompt6menu = [
            {"START NEW GAME?" => -> do Game.new end},
            {"EXIT TO MAIN MENU" => -> do self.main_menu end}
        ]
        prompt6.select('What would you like to do now?', @prompt6menu, help: " ", )
    end
    


    module_function :main_menu, :return_menu
end