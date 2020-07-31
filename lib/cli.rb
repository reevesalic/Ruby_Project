class CLI

  attr_accessor :input

  def initialize
     @input = ""
  end

  def welcome
    puts "Welcome to Pexels."
    puts "Please type animals, nature, or scenary for picture details."
  end

  def input
    input = gets.strip.downcase
    case input 
    when "animals"
     api_animals
    when "nature"
     api_nature
    when "scenary"
     api_scenary
    when exit
     puts "Thank you for looking at our photos."
    else puts "Please enter a valid selection"
    end
  end
end