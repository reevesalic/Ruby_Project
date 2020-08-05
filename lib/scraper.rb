class Scraper
  
  def self.casts
    site = "https://www.amc.com/shows/breaking-bad/cast-crew"
    website = Nokogiri::HTML(open(site))
    casts = website.css(".person-content h2").text
    casts
  end

def self.episodes
  site = "https://www.amc.com/shows/breaking-bad/full-episodes"
  website = Nokogiri::HTML(open(site))
  episodes = website.css(".title").text
  episodes
end

def self.cast_details
  site = "https://www.amc.com/shows/breaking-bad/cast-crew"
  website = Nokogiri::HTML(open(site))
  cast_info = website.css("cast-link")
end

def self.episode_details
  site = "https://www.amc.com/shows/breaking-bad/cast-crew"
  website = Nokogiri::HTML(open(site))
  cast_info = website.css(".description").text
end

end
