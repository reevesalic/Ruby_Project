class Breaking
    
  attr_accessor :actors, :cast_details, :episodes, :episode_details #creates an instance method. displays information without changing.
  
  @@all = []

  def initialize(actors, episodes, episode_details, cast_details)
    @actors = actors
    @episodes = episodes
    @episode_details = episode_details
    @cast_details = cast_details
    @@all << self
    
  end
  
  def self.all
    @@all
  end 
end

def save
  @@all << self
end

