class Breaking
    
     attr_accessor :crew, :episodes, :orig_url, :input
     
     @@all = []
 
     def initialize(attr_hash)
         attr_hash.each do |key, value|
             self.send("#{key}=", value)
         end
         save
     end
 
     def save
         @@all << self
     end
 
     def self.all
         @@all
     end
 
     def self.crew_array
         @@all.each.with_index(1) do |crew,i|
             puts "#{i}. #{crew}" 
         end
     end
 

 
 end