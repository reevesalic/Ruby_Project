class CLI  
  attr_accessor :input, :input2

  def welcome
    puts "\n                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^"
    puts "                     Welcome to Breaking Bad!!".magenta.bold
    puts "\n                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^"
   
    # Scraper.new.create_breaking
    Breaking.all
    options
    end

    def options 
    puts "\nChoose 1 for cast information, 2 for episode information, or 3 to exit!".green.bold
    input = gets.strip
  case input
    when "1"
    puts Scraper.new.actors
  when "2"
    puts Scraper.new.episodes
  when "3"
    exit
  else
      puts "\nInvalid entry. Please try again.".red.bold
      welcome
    end
      end
    end
  