class CLI  
  attr_accessor :input, :input2

  def initialize
      @input = ""
  end

  def welcome
      puts "Welcome to Breaking Bad!!"
      menu
      user_interface
  end

  def menu
      puts "Please choose between 1 for crew, 2 for episodes, or exit"
          
  end

  def get_input
      input = gets.chomp.to_i
  end

  def user_interface
    input = gets.strip.downcase
    case input 
         
  when input = "1"
          
          menu
          puts "displays crew to select from"
          user_interface  

  when input = "2"
         
          menu 
          puts "displays episodes to select from"
          user_interface 

  when input = "exit"
    exit
    else 
          puts "Please enter a valid option"        
  end
     
end

end