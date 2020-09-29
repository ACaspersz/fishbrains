require './art/circle'
require './art/heart'
require './art/square'
require './art/diamond'

class Game
    attr_accessor :play, :correct_answers, :wrong_answers

    def initialize
        @correct_counter = 0
        @incorrect_counter = 0
        @game_array = []
        welcome_message
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

    def welcome_message
      
      type_slow("Welcome to the Memory Game Start Point!")
      type_slow("To win, match all symbols with the symbol IMMEDIATELY PREVIOUS TO IT.")
      type_slow("If the symbol MATCHES the previous symbol, PRESS 1")
      type_slow("If the symbol does NOT match, PRESS 0")
      pause
      puts "You have 45 seconds!"
      puts "Please be as accurate and fast as you can"
      pause
      prompt3 = TTY::Prompt.new
    prompt3.keypress("
                            Game begins in :countdown ...".colorize(:red), timeout: 5)
        clear_screen
    end
  
    
  
    ## def char_if_pressed
       #  begin
         # system("stty raw -echo") # turn raw input on
        #  c = nil
        #  if $stdin.ready?
        #    c = $stdin.getc
        #  end
       #   c.chr if c
       # ensure
       #   system "stty -raw echo" # turn raw input off
       # end
     # end
      
     # while true
      #  c = char_if_pressed
      #  puts "[#{c}]" if c
      #  sleep 1
     #   puts "tick"
     # end

  #   def play
  #       random_array = ["square", "circle", "heart", "diamond"]
  #       game_array = []
  #       clear_screen
  #       correct_counter = 0                        #Counts the number of correct input lines
  #       incorrect_counter = 0
  #       starting = Process.clock_gettime(Process::CLOCK_MONOTONIC) 
  #       20.times do 
  #           random_array.shuffle!

  #           if random_array.sample == "square"
  #               Art.square
  #               game_array.push "square"
  #               input = gets.chomp.to_i
  #               if input == 1 && game_array[-1] == "square"
  #                   puts "Correct!"
  #                   correct_answers << input
  #                   correct_counter += 1
  #               elsif input == 0 && game_array[-1] != "square"
  #                   puts "Correct!"
  #                   correct_answers << input
  #                   correct_counter += 1
  #               elsif input == 1 && game_array[-1] != "square"
  #                   puts "incorrect!"
  #                   @wrong_answers << input
  #                   incorrect_counter += 1
  #               elsif input == 0 && game_array == "square"
  #                   puts "incorrect!"
  #                   @wrong_answers << input
  #                   incorrect_counter += 1
  #               # want to put an argument error here to raise an error and also attempt to retry the question
  #               else
  #                   puts "invalid"
  #               end
    
  #           elsif random_array.sample == "diamond" 
  #               Art.diamond
  #               input = gets.chomp.to_i
  #               game_array.push "diamond"
  #               if input == 1 && game_array[-1] == "diamond"
  #                   puts "Correct!"
  #                   @correct_answers << input
  #                   correct_counter += 1
  #               elsif input == 0 && game_array[-1] != "diamond"
  #                   puts "Correct!"
  #                   @correct_answers << input
  #                   correct_counter += 1
  #               elsif input == 1 && game_array[-1] != "diamond"
  #                   puts "incorrect!"
  #                   @wrong_answers << input
  #                   incorrect_counter += 1
  #               elsif input == 0 && game_array == "diamond"
  #                   puts "incorrect!"
  #                   @wrong_answers << input
  #                   incorrect_counter += 1
  #               else 
  #               puts "invalid!"
        
  #               end

  #           elsif random_array.sample == "heart" 
  #               Art.heart
  #               game_array.push "heart"
  #               input = gets.chomp.to_i
  #               if input == 1 && game_array[-1] == "heart"
  #                   puts "Correct!"
  #                   @correct_answers << input
  #                   correct_counter += 1
  #               elsif input == 0  && game_array[-1] != "heart"
  #                   puts "Correct!"
  #                   @correct_answers << input
  #                   correct_counter += 1
  #               elsif input == 1 && game_array[-1] != "heart"
  #                   puts "incorrect!"
  #                   @wrong_answers << input
  #                   incorrect_counter += 1
  #               elsif input == 0 && game_array[-1] == "heart"
  #                   puts "incorrect!"
  #                   @wrong_answers << input
  #                   incorrect_counter += 1
  #               else 
  #               puts "Incorrect!"
  #               @wrong_answers << input
  #                   incorrect_counter += 1
  #               end

  #           elsif random_array.sample == "circle"
  #               Art.circle
  #               game_array.push "circle"
  #               input = gets.chomp.to_i
  #               if input == 1 && game_array[-1] == "circle"
  #                   puts "Correct!"
  #                   @correct_answers << input
  #                   correct_counter += 1
  #               elsif input == 0 && game_array[-1] != "circle"
  #                   puts "Correct!"
  #                   @correct_answers << input
  #                   correct_counter += 1
  #               elsif input == 1 && game_array[-1] != "circle"
  #                   puts "incorrect!"
  #                   @wrong_answers << input
  #                   incorrect_counter += 1
  #               elsif input == 0 && game_array == "circle"
  #                   puts "incorrect!"
  #                   @wrong_answers << input
  #                   incorrect_counter += 1
  #               else 
  #                   puts "Invalid"
  #               end
  #           else 
  #               puts "invalid"
  #           end    
  #       end
  #       ending = Process.clock_gettime(Process::CLOCK_MONOTONIC)
  #       @elapsed = (ending - starting).round(1)
  #       puts game_array
  #       type_slow("it took #{@elapsed} seconds to complete all symbols")
  #           if correct_counter > 0
  #               type_slow("You got a total of #{correct_counter} correct!!\ WOOOOOO!!!")
  #           end
  #           if incorrect_counter > 0
  #               type_slow("You got #{incorrect_counter} wrong though... :( :(")
  #               sleep(1)
  #               type_slow('.....')
  #               puts "Don't worry.... "
  #               type_slow('You can always start over')
  #               puts "\n"
  #               pause
  #           end
  #  main menu
  #   end

#   We need a play method
#     - Randomly generates symbols/images for a certain amount of time
#     - The user then needs to decide whether the symbol/image matches the previous one or NOT
#     - We want to tally the score as they go
    
  def rand_symbol
    symbols = [
      Art::square,
      Art::shell,
      Art::heart,
      Art::diamond
    ]
    random_symbol = symbols.shuffle[0]
    puts random_symbol
  end

#   def compare_and_display_symbols
#     rand_symbol1 = rand_symbol
#     rand_symbol2 = rand_symbol

#     puts "#{rand_symbol1}\n#{rand_symbol2}"

#     rand_symbol1 == rand_rand_symbol2
#   end



  def draw_square
    input = gets.chomp.to_i
        if input == 1 && @game_array[-1] == "square"
            puts "Correct!"
            @correct_counter += 1
        elsif input == 0 && @game_array[-1] != "square"
            puts "Correct!"
            @correct_counter += 1
        elsif input == 1 && @game_array[-1] != "square"
            puts "incorrect!"
            @incorrect_counter += 1
        elsif input == 0 && @game_array == "square"
            puts "incorrect!"
            @incorrect_counter += 1
        #want to put an argument error here to raise an error and also attempt to retry the question
        else
            puts "invalid"
        end
        @game_array.push "square"
  end

  def draw_diamond
    input = gets.chomp.to_i
        if input == 1 && @game_array[-1] == "diamond"
            puts "Correct!"
            @correct_counter += 1
        elsif input == 0 && @game_array[-1] != "diamond"
            puts "Correct!"
            @correct_counter += 1
        elsif input == 1 && @game_array[-1] != "diamond"
            puts "incorrect!"
            @incorrect_counter += 1
        elsif input == 0 && @game_array == "diamond"
            puts "incorrect!"
            @incorrect_counter += 1
        #want to put an argument error here to raise an error and also attempt to retry the question
        else
            puts "invalid"
        end
        @game_array.push "diamond"
  end

  def draw_shell
    input = gets.chomp.to_i
        if input == 1 && @game_array[-1] == "shell"
            puts "Correct!"
            @correct_counter += 1
        elsif input == 0 && @game_array[-1] != "shell"
            puts "Correct!"
            @correct_counter += 1
        elsif input == 1 && @game_array[-1] != "shell"
            puts "incorrect!"
            @incorrect_counter += 1
        elsif input == 0 && @game_array[-1] == "shell"
            puts "incorrect!"
            @incorrect_counter += 1
        #want to put an argument error here to raise an error and also attempt to retry the question
        else
            puts "invalid"
        end
        @game_array.push "circle"
  end

  def draw_heart
    input = gets.chomp.to_i
        if input == 1 && @game_array[-1] == "heart"
            puts "Correct!"
            @correct_counter += 1
        elsif input == 0 && @game_array[-1] != "heart"
            puts "Correct!"
            @correct_counter += 1
        elsif input == 1 && @game_array[-1] != "heart"
            puts "incorrect!"
            @incorrect_counter += 1
        elsif input == 0 && @game_array == "heart"
            puts "incorrect!"
            @incorrect_counter += 1
        #want to put an argument error here to raise an error and also attempt to retry the question
        else
            puts "invalid"
        end
        @game_array.push "heart"
  end

  

  def play_game
        20.times do
            rand_symbol
            input = gets.chomp.to_i
            if rand_symbol == Art::square
                draw_square
            elsif rand_symbol == Art::diamond
                draw_diamond
            elsif rand_symbol == Art::heart
                draw_heart
            elsif rand_symbol == Art::shell
                draw_shell
            else
                puts "invalid at the loop level"
            
            end
        end
    end
end
  
  