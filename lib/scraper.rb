class Scraper
  
  def self.scrape_options
    site = "https://www.amc.com/shows/breaking-bad/cast-crew"
    website = Nokogiri::HTML(open(site))
    crew = website.css('.person-content h2').text
    # binding.pry
  end

# sections.map do |section|
#   xxxx.new(link.text, link.attributes["href"]).value, choices

# end

# def self.scrape_cast
#   site = "https://www.amc.com/shows/breaking-bad/cast-crew"
#   website = Nokogiri::HTML(open(site))
  
#   crew = website.css("person-content")

# end
end
