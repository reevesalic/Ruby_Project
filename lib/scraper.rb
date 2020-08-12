class Scraper


    def baptism
        site = "https://www.navigate.church/"
        website = Nokogiri::HTML(open(site))
        website.css(".menu-section-title").each do |title|
        puts title.text
       
    end
    end
   
    def baptism_answers
      site = "https://www.navigate.church/"
      website = Nokogiri::HTML(open(site))
      website.css(".div.menu-section-description").each do |answers|
      puts answers.text
     
  end
end
end


