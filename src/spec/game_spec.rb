
require '../model/game'
require 'rspec'

describe Game do
    # it "should retry input if first input invalid" do
    #     expect(choice_symbol(input)) != nil
    # end

    # it "should correctly determine each round results based" do
    #     choice_symbol_input = 0
    #     case choice_symbol_input
    #     when @game_array[-1] != symbol
    #         @correct_counter += 1
    # end

    # it "should randomly generate a symbol from the game symbol array for initial symbol" do
    #     expect(Game.start_screen(first_symbol)).to eq "turtle"
    # end

    it "should save first symbol to game array" do
        expect(@game_array[0]).to be(first_symbol)
    end
    
end