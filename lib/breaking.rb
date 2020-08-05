class Breaking
    
  attr_reader :cast, :episode

  all = []

  def initiallize
    @@all = all
    @cast = cast
    @episode = episode
  end

  def save
          @@all << self
  end 
end

     