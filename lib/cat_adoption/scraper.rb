class CatAdoption::Scraper

# main page
  # each = doc.css(".pet").text
  # name = doc.css("h3").text
  # url = doc.css("a").attr("href").text

# bio page
  # bio = doc.css("td.description-text")[0].text.strip


  def self.scrape_main_page
  page = Nokogiri::HTML(open("http://www.austinhumanesociety.org/feline-friends/"))

    page.css(".pet").each do |cat|
      name = cat.css("h3").text.strip
      url = cat.css("a").attr("href").text
      CatAdoption::Cat.new(name, url)
    end
  end

  def self.scrape_bio_page(cat)
    site = cat.url
    bio_page = Nokogiri::HTML(open(site))
    cat.bio = bio_page.css("td.description-text")[0].text.strip
    end
  end
 