class Scraper
    def question
      site = "https://www.navigate.church/"
      website = Nokogiri::HTML(open(site))
      #question is an iteration variable. creates a block of code with each question within an array.
      website.css(".menu-section-title p").each_with_index do |question, index| 
        question = question.text
        answer = website.css(".menu-section-description p")[index].text.strip
            
        Baptism.new(question, answer)
     
      
      end
    end
end
