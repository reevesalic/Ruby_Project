class Scraper
    def question
       
      site = "https://www.navigate.church/"
        website = Nokogiri::HTML(open(site))
        questions = website.css(".menu-section-title").each_with_index do |question, index|
          question = question.text
          answer = website.css(".menu-section-description")[index].text.strip
          
          Baptism.new(question, answer)
          puts question
      
      end
    end
end
