class Game
    attr_accessor :play, :correct_answers, :wrong_answers

    def initialize
        @correct_answers = []                        
        @wrong_answers = []
        welcome_message
       
        play                  
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
      puts "You have 45 seconds!"
      puts "Please be as accurate and fast as you can"
      prompt3 = TTY::Prompt.new
    prompt3.keypress("
                            Game begins in :countdown ...".colorize(:red), timeout: 5)
    end
  
    def clear_screen
      system('clear')
    end
  
    def pause
      sleep(2)
    end
  
    def play
    random_array = ["square", "circle", "heart", "diamond"]
    game_array = []
    clear_screen
    correct_counter = 0                        #Counts the number of correct input lines
    incorrect_counter = 0
    starting = Process.clock_gettime(Process::CLOCK_MONOTONIC) 
    20.times do 
        random_array.shuffle!

        if random_array.sample == "square"
            square
            input = gets.chomp
            if input == 1 
                puts "Correct!"
                correct_answers << input
                correct_counter += 1
                pause
            elsif input == 0 
            puts "Correct!"
            correct_answers << input
                correct_counter += 1
            pause
            else 
                puts "incorrect!"
                
            end
    
        elsif random_array.sample == "diamond" 
            diamond
            input = gets.chomp
            game_array.push "diamond"
            if input == 1  
                puts "Correct!"
                @correct_answers << input
                correct_counter += 1
            elsif input == 0 
                puts "Correct!"
                @correct_answers << input
                correct_counter += 1
            else 
                puts "Incorrect!"
                @wrong_answers << input
                incorrect_counter += 1
            end
        elsif random_array.sample == "heart" 
        heart
        game_array.push "heart"
        input = gets.chomp
        if input == 1 
            puts "Correct!"
            @correct_answers << input
                correct_counter += 1
        elsif input == 0  
            puts "Correct!"
            @correct_answers << input
            correct_counter += 1
        else 
            puts "Incorrect!"
            @wrong_answers << input
                incorrect_counter += 1
        end
        elsif random_array.sample == "circle"
            circle
            game_array.push "circle"
            input = gets.chomp
            if input == 1 
                puts "Correct!"
                @correct_answers << input
                correct_counter += 1
            elsif input == 0 
                puts "Correct!"
                @correct_answers << input
                correct_counter += 1
            else 
                puts "Incorrect!"
                @wrong_answers << input
                incorrect_counter += 1
            end
        else 
            puts "invalid"
        
        end
        
  end
  ending = Process.clock_gettime(Process::CLOCK_MONOTONIC)
        @elapsed = (ending - starting).round(1)
        type_slow("it took #{@elapsed} seconds to complete all symbols")
        if correct_counter > 0
            type_slow("You got a total of #{correct_counter} correct!!\ WOOOOOO!!!")
        end
        if incorrect_counter > 0
            type_slow("You got #{incorrect_counter} wrong though... :( :(")
            sleep(1.5)
            type_slow('.....')
            puts "Don't worry.... "
            type_slow('You can always start over')
            puts "\n"
        end
    
end
end 
    
  
  