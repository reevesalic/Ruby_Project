class Baptism
   
  attr_accessor :question, :answer
  
    @@all = [] 
  
  def initialize(question, answer)
    @question = question  
    @answer = answer
    @@all << self 
  end   
  
  def self.all 
    @@all
  end 
end