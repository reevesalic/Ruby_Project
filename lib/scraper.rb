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
    actors = website.css(".person-content h2")
    actors
end

def episodes
  site = "https://www.amc.com/shows/breaking-bad/full-episodes"
  website = Nokogiri::HTML(open(site))
  episodes = website.css("div.title").text
  episodes
  end

def episode_details
  site = "https://www.amc.com/shows/breaking-bad/full-episodes"
  website = Nokogiri::HTML(open(site))
  episodes_info = website.css(".description")
episode_details
end

def cast_details
  site = "https://www.amc.com/shows/breaking-bad/cast-crew"
  website = Nokogiri::HTML(open(site))
  cast_info = website.css("cast-link")
cast_details
end
end
