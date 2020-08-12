class CLI  
  # attr_accessor :input, :input2

  def welcome #instance method
    puts "\n                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^"
    puts "                     Welcome to Navigate Church!!".magenta.bold
    puts "\n                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^"
    Baptism.all
    options
  end

  def options 
    baptism = Scraper.new.baptism #first level scrape baptism questions

    puts "Please choose a number to learn more about baptism or type exit!".green.bold
    input = ""
    input = gets.strip
    if input.to_i > 0 && input.to_i < 5  
      answers
    elsif input.downcase == "exit"
      exit
    else
      puts "Please enter a valid number."
  end
end
def answers(baptism)
  answers = Scraper.baptism_answers(baptism)[input-1] #displays answers after they select a number.
end
end