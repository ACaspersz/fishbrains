require_relative '../views/art/shell'
require_relative '../views/art/turtle'
require_relative '../views/art/starfish'
require_relative '../views/art/anchor'
require_relative '../views/views'
require_relative '../views/options_view'
require 'io/console'

require 'rspec'



class Game
    attr_accessor :initialize
    attr_reader :score_calc

    def initialize
        @correct_counter = 0
        @incorrect_counter = 0
        @invalid_counter = 0
        @game_array = []
        @response_times = []
        start_screen
        thread              
    end

    def start_screen
        puts "Your first symbol is!"
        init_array = ["shell", "starfish", "anchor", "turtle"]
        first_symbol = init_array.shuffle[0]
            if first_symbol == "starfish"
                puts Art::starfish
            elsif first_symbol == "shell"
                puts Art::shell
            elsif first_symbol == "anchor"
                puts Art::anchor
            else first_symbol == "turtle"
                puts Art::turtle
            end
        @game_array << first_symbol
        prompt3 = TTY::Prompt.new
        prompt3.keypress("
            Game begins in :countdown ...".colorize(:red), timeout: 5)
           
            Views::clear_screen
    end


    
  def symbol_choice(symbol)
    begin
        input = STDIN.getch.to_i
        if input == 1 && @game_array[-1] == symbol
            @correct_counter += 1
           
        elsif input == 0 && @game_array[-1] != symbol
            @correct_counter += 1
            
        elsif input == 1 && @game_array[-1] != symbol
            @incorrect_counter += 1
            
        elsif input == 0 && @game_array == symbol
            @incorrect_counter += 1
           
        else
            @invalid_counter += 1
            
        end
        @game_array << symbol
    rescue 
        retry if input != 0 || 1
    end
  end

    def countdown(seconds)
        date1 = Time.now + seconds
        while Time.now < date1
            t = Time.at(date1.to_i - Time.now.to_i)
            print "#{t.strftime('0:%S')} seconds left\b"
            sleep 1

        end
    end

    
  def average_response
        @response_times.reduce(:+) / @response_times.length
  end  
  
  def score_calc
        # adds up correct and incorrect counters and creates a score based on performance
        game_score = (@correct_counter * 100) - (@incorrect_counter * 50)
        if self.average_response < 0.5  
            game_score * 1.6.to_i
        # fast response bonus, increases overall score by 60%
        elsif average_response > 0.5
            game_score * 1.to_i
        end
    end

   

    def play_game
        @game_symbols = [
            Art::starfish,
            Art::shell,
            Art::turtle,
            Art::anchor
        ]
        date1 = Time.now + 45
        while Time.now < date1 do
            Views::clear_screen
            symbol = @game_symbols.shuffle[0]
            puts symbol.colorize(:light_yellow)
            sleep 0.1
            Views::clear_screen
            puts symbol
            start_time = Process.clock_gettime(Process::CLOCK_MONOTONIC)
            if symbol == Art::starfish
                symbol_choice("starfish")
            
            elsif symbol == Art::anchor
                symbol_choice("anchor")
                
            elsif symbol == Art::turtle
                symbol_choice("turtle")
            elsif symbol == Art::shell
                symbol_choice("shell")
    
            else
                puts "invalid at the loop level"
            end
            end_time = Process.clock_gettime(Process::CLOCK_MONOTONIC)
            @response_times << end_time - start_time
        end
        
            puts "FINISHED!!"
            puts "Your score for this round is #{score_calc}!".colorize(:green)
            puts "GREAT WORK!!"
            sleep 2
        
            Options::return_menu
        
    end

    
    def thread
        t1 = Thread.new{countdown(45)}
        t2 = Thread.new{play_game()}
        t1.join
        t2.join
  end

end

  
  