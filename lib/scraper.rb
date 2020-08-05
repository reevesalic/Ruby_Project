class Scraper
  
  def self.crew
    site = "https://www.amc.com/shows/breaking-bad/cast-crew"
    website = Nokogiri::HTML(open(site))
    crew = website.css(".person-content h2").text
    crew
  end

def self.episodes
  site = "https://www.amc.com/shows/breaking-bad/full-episodes"
  website = Nokogiri::HTML(open(site))
  episodes = website.css(".title").text
  episodes
end

def self.crew_details
  site = "https://www.amc.com/shows/breaking-bad/cast-crew"
  website = Nokogiri::HTML(open(site))
  
  crew_info = website.css("cast-link")

end
end
