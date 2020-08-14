class CLI  
   def welcome #instance method
    puts "\n                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^"
    puts "                     Welcome to Navigate Church!!".magenta.bold
    puts "\n                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^"
    options
  end

  def goodbye
    exit!
  end

  def validation
    
      puts "Please enter a valid number.".red.bold
    
  end
  def options 
    question = Scraper.new.question #first level scrape baptism questions
    puts "\nPlease choose a number to learn more about baptism or type 5 to exit!\n".green.bold
    input = gets.strip.to_i
    
    
    if input.to_i == 5
      goodbye
    elsif input.to_i.between?(1, 5)
      baptism = Baptism.all[input.to_i-1]
      puts baptism.answer
      
      puts "\nPlease visit https://www.navigate.church/ for additional information\n".blue
      options
     
    else !(input.to_i.between?(1, 5))
      
      validation
      options
    end
 end

end

