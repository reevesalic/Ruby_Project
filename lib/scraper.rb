class Scraper


def episodes
    site = "https://www.amc.com/shows/breaking-bad/full-episodes"
    website = Nokogiri::HTML(open(site))
    website.css("div.title").each do |title|
        

    # actor_details = website.css("p.description")[0,4]
    puts title.text
    # puts "\n#{cast_info}"
end
end
end


