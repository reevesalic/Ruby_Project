class CLI  
   def welcome #instance method
    puts "\n                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^"
    puts "                     Welcome to Navigate Church!!".magenta.bold
    puts "\n                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^"
    options
  end
  def options 
    question = Scraper.new.question #first level scrape baptism questions

    puts "\nPlease choose a number to learn more about baptism or type exit!\n".green.bold
    input = ""
    
    if input = gets.strip.to_i
      baptism = Baptism.all[input.to_i-1]
      
      puts baptism.answer
      puts "\nPlease visit https://www.navigate.church/ for additional information\n".blue
      options
    elsif input == "exit"
      exit
    else
      puts "Please enter a valid number.".red.bold
      options
    end
 end
end