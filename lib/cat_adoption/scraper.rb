class CatAdoption::Scraper

# main page
  # each = doc.css(".pet").text
  # name = doc.css("h3").text
  # url = doc.css("a").attr("href").text

# bio page
  # bio = doc.css("td.description-text")[0].text.strip

  def self.scrape_main_page
   page = Nokogiri::HTML(open("http://www.austinhumanesociety.org/feline-friends/"))
   each = doc.css(".pet").text
  end
 end
 