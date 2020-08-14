class Scraper
    def question
      site = "https://www.navigate.church/"
      website = Nokogiri::HTML(open(site))
      questions = website.css(".menu-section-title p").each_with_index do |question, index|
      question = question.text
      answer = website.css(".menu-section-description p")[index].text.strip
          
      Baptism.new(question, answer)
      puts question
      
      end
    end
end
