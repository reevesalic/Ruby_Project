class CLI  
  attr_accessor :input, :input2

  def welcome
    puts "\n                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^"
    puts "                     Welcome to Breaking Bad!!".magenta.bold
    puts "\n                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^"
    Breaking.all
    options
    choose_option
    end

  def options 
    puts "\nChoose 1 for cast information, 2 for episode information, or 3 to exit!".green.bold
    input = gets.strip
    case input
      when "1"
     Scraper.new.actors
     choose_option
      when "2"
     Scraper.new.episodes
     choose_option
      when "3"
      exit
    else
      puts "\nInvalid entry. Please try again.".red.bold
      welcome
    end
  end
end

      def choose_option
        puts "\nPlease choose a number to see more information."
        input = gets.strip.to_i
        max_value = Breaking.all.length
        if input.between?(1,max_value) #checks to see if value is valid
        else 
          puts "\nPlease enter a valid input".red.bold
          options
          choose_option
      end
    end
    
  

  