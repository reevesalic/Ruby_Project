class CLI  
  attr_accessor :input, :input2

 def welcome
  puts "Welcome to Breaking Bad!!"
  
 
    options
  end

 def options 
  input = nil
  while input != "exit"
    
  puts "Choose 1 for crew information, 2 for episode information, or 3 to exit!"
  
  input = gets.strip.downcase
  case input
  when "1"
  puts Scraper::scrape_options
  when "2"
  puts "Episodes"
  when "3"
  exit
  else
    puts "Invalid entry. Please try again."
    welcome
  end
end
end


end