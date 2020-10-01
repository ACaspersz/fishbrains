require './art/shell'
require './art/turtle'
require './art/starfish'
require './art/anchor'
require 'highline'


class Game
    attr_accessor :play_game, :correct_answers, :wrong_answers, :welcome_message

    def initialize
        @correct_counter = 0
        @incorrect_counter = 0
        @invalid_counter = 0
        @game_array = []
        start_screen
        play_game               
    end
    def clear_screen
        system('clear')
        end
    
    def pause
      sleep(2)
    end


    def type_slow(words)
        words.each_char { |char| 
        print char
        sleep(0.02)
        }
        print "\n"
    end

    def start_screen
        prompt3 = TTY::Prompt.new
        prompt3.keypress("
            Game begins in :countdown ...".colorize(:red), timeout: 5)
clear_screen
    end

    def self.welcome_message
      
      type_slow("Welcome to the Memory Game Start Point!")
      type_slow("To win, match all symbols with the symbol IMMEDIATELY PREVIOUS TO IT.")
      type_slow("If the symbol MATCHES the previous symbol, PRESS 1")
      type_slow("If the symbol does NOT match, PRESS 0")
      pause
      puts "You have 45 seconds!"
      puts "Please be as accurate and fast as you can"
      pause
      puts "Please press any key to return to main menu"
    end
  
    
  
    # def char_if_pressed
    #     begin
    #      system("stty raw -echo") # turn raw input on
    #      c = nil
    #      if $stdin.ready?
    #        c = $stdin.getc
    #      end
    #      c.chr if c
    #    ensure
    #      system "stty -raw echo" # turn raw input off
    #    end
    # end
      
    #  while true
    #    c = char_if_pressed
    #    puts "[#{c}]" if c
    #    sleep 1
    #    puts "tick"
    #  end

    def raw_no_echo_mode_exec
        raw_no_echo_mode
        yield
      ensure
        restore_mode
      end

  

  def draw_starfish
    input = gets.chomp.to_i
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
    input = gets.chomp.to_i
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
    input = gets.chomp.to_i
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
    input = gets.chomp.to_i
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

  
  
    def play_game
        include highline
        starting = Process.clock_gettime(Process::CLOCK_MONOTONIC) 
        game_symbols = [
            Art::starfish,
            Art::shell,
            Art::turtle,
            Art::anchor
        ]
        20.times do
            symbol = game_symbols.shuffle[0]
            puts symbol
            if symbol == Art::starfish
                draw_starfish
                clear_screen
            elsif symbol == Art::anchor
                draw_anchor
                clear_screen
            elsif symbol == Art::turtle
                draw_turtle
                clear_screen
            elsif symbol == Art::shell
                draw_shell
                clear_screen
            else
                puts "invalid at the loop level"
            end
        end
        ending = Process.clock_gettime(Process::CLOCK_MONOTONIC)
        @elapsed = (ending - starting).round(1)
        type_slow("it took #{@elapsed} seconds to complete all symbols")
            if @correct_counter > 0
                type_slow("You got a total of #{@correct_counter} correct!!\ WOOOOOO!!!")
            end
            if @incorrect_counter > 0
                type_slow("You got #{@incorrect_counter} wrong though... :( :(")
                sleep(1)
                type_slow('.....')
                puts "Don't worry.... "
                type_slow('You can always start over')
                puts "\n"
                pause
            end
            if @invalid_counter > 0
                puts "There were #{@invalid_counter} entries"
            end
   main_menu
    end
end

  
  