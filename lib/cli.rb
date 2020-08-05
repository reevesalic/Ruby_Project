class CLI  
  attr_accessor :input, :input2

  def welcome
    puts "\nWelcome to Breaking Bad!!".red
    @casts = Scraper::casts
    @episodes = Scraper::episodes
 
    options
  end

  def options 
    input = nil
    while input != "exit"
     puts "\nChoose 1 for cast information, 2 for episode information, or 3 to exit!".blue
  
    input = gets.strip.downcase
  case input
    when "1"
      puts @casts
    when "2"
      puts @episodes
    when "3"
      exit
    else
      puts "Invalid entry. Please try again."
      welcome
      end
    end
  end
end