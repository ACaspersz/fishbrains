require_relative '../views/art/shell'
require_relative '../views/art/turtle'
require_relative '../views/art/starfish'
require_relative '../views/art/anchor'
require_relative '../views/views'
require_relative 'stats'
require 'io/console'
require 'yaml'


class Game
    attr_reader :initialize

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

    def countdown(seconds)
        date1 = Time.now + seconds
        while Time.now < date1
          t = Time.at(date1.to_i - Time.now.to_i)
          print "#{t.strftime('0:%S')} seconds left\b"
          sleep 1
          
        end
      end


  def draw_starfish
    input = STDIN.getch.to_i
        if input == 1 && @game_array[-1] == "starfish"
            @correct_counter += 1
        elsif input == 0 && @game_array[-1] != "starfish"
            @correct_counter += 1
        elsif input == 1 && @game_array[-1] != "starfish"
            @incorrect_counter += 1
        elsif input == 0 && @game_array == "starfish"
            @incorrect_counter += 1
        #want to put an argument error here to raise an error and also attempt to retry the question
        else
            @invalid_counter += 1
        end
        @game_array.push "starfish"
  end

  def draw_anchor
    input = STDIN.getch.to_i
        # end_time = Process.clock_gettime(Process::CLOCK_MONOTONIC)

        if input == 1 && @game_array[-1] == "anchor"
            @correct_counter += 1
        elsif input == 0 && @game_array[-1] != "anchor"
            @correct_counter += 1
        elsif input == 1 && @game_array[-1] != "anchor"
            @incorrect_counter += 1
        elsif input == 0 && @game_array == "anchor"
            @incorrect_counter += 1
        #want to put an argument error here to raise an error and also attempt to retry the question
        else
            @invalid_counter += 1
        end
        @game_array.push "anchor"
  end

  def draw_shell
    input = STDIN.getch.to_i
    # end_time = Process.clock_gettime(Process::CLOCK_MONOTONIC)
        if input == 1 && @game_array[-1] == "shell"
            @correct_counter += 1
        elsif input == 0 && @game_array[-1] != "shell"
            @correct_counter += 1
        elsif input == 1 && @game_array[-1] != "shell"
            @incorrect_counter += 1
        elsif input == 0 && @game_array[-1] == "shell"
            
            @incorrect_counter += 1
        #want to put an argument error here to raise an error and also attempt to retry the question
        else
            @invalid_counter += 1
        end
        @game_array.push "circle"
  end

  def draw_turtle
    input = STDIN.getch.to_i
    # end_time = Process.clock_gettime(Process::CLOCK_MONOTONIC)
        if input == 1 && @game_array[-1] == "turtle"
            @correct_counter += 1
        elsif input == 0 && @game_array[-1] != "turtle"
            @correct_counter += 1
        elsif input == 1 && @game_array[-1] != "turtle"
            @incorrect_counter += 1
        elsif input == 0 && @game_array == "turtle"
            @incorrect_counter += 1
        #want to put an argument error here to raise an error and also attempt to retry the question
        else
            @invalid_counter += 1
        end
        @game_array.push "turtle"
  end

  def thread
t1 = Thread.new{countdown(30)}
t2 = Thread.new{play_game()}
t1.join
t2.join
  end

  
    def play_game
        @game_symbols = [
            Art::starfish,
            Art::shell,
            Art::turtle,
            Art::anchor
        ]
        date1 = Time.now + 30
        while Time.now < date1 do
            symbol = @game_symbols.shuffle[0]
            start_time = Process.clock_gettime(Process::CLOCK_MONOTONIC)
            Views::clear_screen
            puts symbol
            if symbol == Art::starfish
                draw_starfish
                

            elsif symbol == Art::anchor
                draw_anchor
                
            elsif symbol == Art::turtle
                draw_turtle
                
            elsif symbol == Art::shell
                draw_shell
    
            else
                puts "invalid at the loop level"
            end
            end_time = Process.clock_gettime(Process::CLOCK_MONOTONIC)
            @response_times << [end_time - start_time]
        end
            puts "FINISHED!!"
            if @correct_counter > 0
                Views::type_slow("You got a total of #{@correct_counter} correct!!\ WOOOOOO!!!")
            end
            if @incorrect_counter > 0
                Views::type_slow("You got #{@incorrect_counter} wrong though... :( :(")
                sleep(1)
                Views::type_slow('.....')
                puts "Don't worry.... "
                Views::type_slow('You can always start over')
                puts "\n"
                Views::pause
            end
            if @invalid_counter > 0
                puts "There were #{@invalid_counter} entries"
            end
            prompt5 = TTY::Prompt.new
            prompt5.keypress("Press enter to return to the main menu.")
    end
end

  
  