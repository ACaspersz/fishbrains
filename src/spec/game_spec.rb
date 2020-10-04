
require '../model/game'


describe Game do
    
    it "should save first symbol to game array" do
        first_symbol = "shell"
        expect(@game_array[0]).to be(first_symbol)
    end
    
    

end