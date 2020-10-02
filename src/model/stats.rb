
require 'yaml'
require_relative 'highscores'

module Stats
    @games = YAML.load(File.read("src/game_stats.yml")) rescue [] 
    
    class << self
        def map
            @games.map { |game_ary| yield game_ary }
        end

        def next_id
            @games.length + 1
        end

        def save(game)
            game.id = next_id
            @games << game
            File.open("src/game_stats", "w") { |file| file.write(@games.to_yaml) }
        end
    end

    def save!
        self.class.save(self)
    end

end

