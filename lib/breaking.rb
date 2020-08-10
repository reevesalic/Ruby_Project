class Breaking
    
  attr_accessor :name, :type, :actors, :cast_details, :episodes, :episode_details #creates an instance method. displays information without changing.
  
    @@all = []

  def initialize(name, actors, episodes, episode_details, cast_details)
    @actors = actors
    @episodes = episodes
    @episode_details = episode_details
    @cast_details = cast_details
    @name = name
    @type = type
    @@all << self
    
  end
  
  def self.all
    @@all
  end 
end

  def save
    @@all << self
  end

