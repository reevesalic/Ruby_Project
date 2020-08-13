class CLI  
   def welcome #instance method
    puts "\n                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^"
    puts "                     Welcome to Navigate Church!!".magenta.bold
    puts "\n                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^"
    # Baptism.all
    options
  end
  def options 
    question = Scraper.new.question #first level scrape baptism questions

    puts "Please choose a number to learn more about baptism or type exit!".green.bold
    input = ""
    input = gets.strip.downcase
    if input.to_i
      baptism = Baptism.all[input.to_i-1]
      puts baptism.answer
    elsif input.downcase == "exit"
    exit
        else
      puts "Please enter a valid number."
  end
end

end