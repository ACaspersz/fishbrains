module Sounds
    def beep
Sound.new '../media/beep.wav'
    end

    def self.start_sound
      start_sound = Sound.new '../media/start_game.ogg'  
    end


correct_sound = Sound.new '../media/131662__bertrof__game-sound-correct-v2.wav'
wrong_sound = Sound.new '../media/131657__bertrof__game-sound-wrong.wav'
timeout = Music.new '../media/timeout.wav'
chime = Sound.new '../media/chime.aiff'
end