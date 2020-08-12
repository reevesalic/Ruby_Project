class Baptism
   
  attr_accessor :baptism, :baptism_answers #creates an instance method. displays information without changing.
  
   @@all = []
  
  def initialize(baptism, baptism_answers)
    @baptism = baptism
    @baptism_answers = baptism_answers
    @@all << self
  end
  
  def self.all
    @@all
  end 

  def save
    @@all << self
  end  
end