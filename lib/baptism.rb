class Baptism
   
  attr_accessor :question, :answer, :baptism#creates an instance method. displays information without changing.
  
    @@all = []
  
  def initialize(question, answer)
    @question = question
    @answer = answer
    @baptism = baptism
    @@all << self
  end
  
  def self.all
    @@all
  end 

  def save
    @@all << self
  end  
end