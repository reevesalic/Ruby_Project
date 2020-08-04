class Breaking
    
     attr_accessor :cast, :name, :description, :url, :actor

     def self.cast
     
          cast_1 = self.new
          cast_1.name = "Walter White"
          cast_1.actor = "Bryan Cranston"
          cast_1.description = "Walter White, blah blah" 
          cast_1.url = "https://www.amc.com/shows/breaking-bad/cast-crew"
 
          cast_2 = self.new
          cast_2.name = "Skyler White"
          cast_2.actor = "Anna Gunn"
          cast_2.description = "Anna Gunn blah blah"
          cast_2.url = "https://www.amc.com/shows/breaking-bad/cast-crew"
     
          [cast_1, cast_2]
     end
end
          #  def cast_details
#   puts "Crew details"
#  end

#  def episodes_details
#   puts "Episode details"
# end