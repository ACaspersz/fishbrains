
require '../model/game'


describe Game do
    
    it "should save first symbol to game array" do
        first_symbol = "shell"
        expect(@game_array[0]).to be(first_symbol)
    end

    it "should randomly generate any of 4 available symbols" do
        
    end

end

#PLEASE NOTE: unable to use rspec to test specs.