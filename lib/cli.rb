class CLI  
  attr_accessor :input, :input2

  def welcome #instance method
    puts "\n                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^"
    puts "                     Welcome to Breaking Bad!!".magenta.bold
    puts "\n                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^"
    Breaking.all
    options
  end

  def options 
    puts "\nChoose 1 for cast information, 2 for episode information, or 3 to exit!".green.bold
    input = gets.strip
    case input
      when "1"
      
       episodes = Scraper.new.episodes #first level scrape
      #  puts episodes
      #  actor_details
      # when "2"
      #   # Scraper.new.episodes #first level scrape
      #   # episode_info
      when "3"
        exit
      else
        puts "\nInvalid entry. Please try again.".red.bold
        welcome
     end
  end
end

# def actor_details
#   puts "\nPlease enter a number to see more information.".green.bold
#   input = gets.strip.to_i
#   Scraper.new.cast_details
#   max_value = Breaking.all.length
#   if input.between?(1,max_value) #checks to see if entered value is valid
#     # else
#     #   puts "Please enter valid no"
#     actor = Breaking.all[input-1]
#    end
#   end

# def episode_info
#   puts "\nPlease enter a number to see more information.".green.bold
#     input = gets.strip.to_i
#   Scraper.new.episode_details
#   max_value = Breaking.all.length
#     if input.between?(1,max_value) #checks to see if entered value is valid
    
#    info = Breaking.all[input-1]
#     end
#   end
# end

      