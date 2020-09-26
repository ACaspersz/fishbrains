#----------GEMS------------------------------------------


require 'colorize'
require 'tty-progressbar'
require 'mac/say'

#------------------ART STYLES-----------------------------

def circle
puts "                                      ".colorize(:blue).colorize(:background => :green)
 puts "            *** ### ### ***          ".colorize(:blue).colorize(:background => :green)
 puts "         *######################*    ".colorize(:blue).colorize(:background => :green)
   puts "   **
    *##                               ##*
  *##                                   ##*
*##                                       ##*
*##                                         ##*
*##                                           ##*
*##                                             ##*
*##                                             ##*
*##                                             ##*
*##                                             ##*
*##                                             ##*
*##                                           ##*
*##                                         ##*
*##                                       ##*
  *##                                   ##*
    *#                                ##*
       *##                         ##*
           *##                 ##*
               *** ### ### ***             "
end

puts circle