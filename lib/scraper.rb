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
    actors
end
end


def episodes
  site = "https://www.amc.com/shows/breaking-bad/full-episodes"
  website = Nokogiri::HTML(open(site))
  episodes = website.css("div.title")[0, 4]
  episodes.each.with_index(1) do |episode, index|
    puts "\n#{index}. #{episode}"
  episodes
  end
end

def episode_details
  site = "https://www.amc.com/shows/breaking-bad/full-episodes"
  website = Nokogiri::HTML(open(site))
  episodes_info = website.css(".description")
  episodes_info.each.with_index(1) do |episode_info, index|
    puts "\n#{index}. #{episode_info}"
episode_details
end
end
def cast_details
  site = "https://www.amc.com/shows/breaking-bad/cast-crew"
  website = Nokogiri::HTML(open(site))
  cast_info = website.css("cast-link")
  cast_info.each.with_index(1) do |cast_info, index|
    puts "\n#{index}. #{cast_info}"
cast_details
end
end
end
