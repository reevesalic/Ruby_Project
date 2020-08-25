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
    Scraper.new.question if Baptism.all.empty?
    
    list_questions
    puts "\nPlease enter a number between 1-4 to learn more about baptism or you can enter 5 to exit!\n".green.bold
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

 
 def list_questions
  array = Baptism.all.map do |object|
  object.question.split(". ")[1]
 end
  sorted_array = array.sort
  puts sorted_array
  
 end
end