class Scraper
  
def create_breaking 
  actors = self.actors
  episodes = self.episodes
  episode_details = self.episode_details
  cast_details = self.cast_details
  
Breaking.new(actors, episodes, episode_details, cast_details)
end

def actors
    site = "https://www.amc.com/shows/breaking-bad/cast-crew"
    website = Nokogiri::HTML(open(site))
    actors = website.css('h2')[0, 4]
    actors.each.with_index(1) do |actor, index|
    puts "\n#{index}. #{actor}".chomp("h2")
   
end
end


def episodes
  site = "https://www.amc.com/shows/breaking-bad/full-episodes"
  website = Nokogiri::HTML(open(site))
  episodes = website.css("div.title")[0, 4]
  episodes.each.with_index(1) do |episode, index|
  puts "\n#{index}. #{episode}"
  
  end
end

def episode_details
  site = "https://www.amc.com/shows/breaking-bad/full-episodes"
  website = Nokogiri::HTML(open(site))
  episode_info = website.css(".description")[0,4]
  puts "\n#{episode_info}"
end
 
 def cast_details
  site = "https://www.amc.com/shows/breaking-bad/cast-crew"
  website = Nokogiri::HTML(open(site))
  cast_info = website.css("p.description")[0,4]
  puts "\n#{cast_info}"
  end
end
