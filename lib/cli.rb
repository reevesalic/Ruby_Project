class CLI

  attr_accessor :input

  # def initialize
  #    @input = ""
  # end

  def welcome
    puts "Welcome to Pexels."
    puts "Please type 'animals', 'nature', or 'scenrey', for picture details."
    puts "Type exit if you would like to exit the program."
    # options
    new_api = API.new
    new_api.get_api
  end

  # def options
  #   input = gets.strip.downcase
  #   case input 
  #     when "animals"
  #       get_api
  #     when "nature"
  #       api_nature
  #     when "scenery"
  #       api_scenery
  #     when "exit"
  #       puts "Thank you for viewing our photos."
  #     else 
  #       puts "Please enter a valid selection"
  #   end
  # end
end