class Breaking
   
  attr_accessor :episodes, :actor_details #creates an instance method. displays information without changing.
  
   @@all = []
  
  def initialize(episodes, actor_details)
    @episodes = episodes
    @actor_details = actor_details
    @@all << self
  end
  
  def self.all
    @@all
  end 

  def save
    @@all << self
  end  
end