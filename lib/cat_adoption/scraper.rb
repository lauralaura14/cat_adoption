class CatAdoption::Scraper

# main page
  # each = doc.css(".pet").text
  # name = doc.css("h3").text
  # url = doc.css("a").attr("href").text

# bio page
  # bio = doc.css("td.description-text")[0].text.strip

#-- test individual page --
# def self.scrape_main
#  page = Nokogiri::HTML(open("http://www.austinhumanesociety.org/pet-details/?id=10467086"))
#  binding.pry
# end

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
    cat.number_label = bio_page.css("td.detail_text")[0].text.strip
    cat.breed_label = bio_page.css("td.detail_text")[1].text.strip
    cat.sex_label = bio_page.css("td.detail_text")[2].text.strip
    cat.dob_label = bio_page.css("td.detail_text")[3].text.strip
    cat.age_label = bio_page.css("td.detail_text")[4].text.strip
    cat.weight_label = bio_page.css("td.detail_text")[5].text.strip
    cat.color_label = bio_page.css("td.detail_text")[6].text.strip
    cat.location_label = bio_page.css("td.detail_text")[7].text.strip
    cat.fee_label = bio_page.css("td.detail_text")[8].text.strip
    cat.number = bio_page.css("td.description-text")[0].text.strip
    cat.breed = bio_page.css("td.description-text")[1].text.strip
    cat.sex = bio_page.css("td.description-text")[2].text.strip
    cat.dob = bio_page.css("td.description-text")[3].text.strip
    cat.age = bio_page.css("td.description-text")[4].text.strip
    cat.weight = bio_page.css("td.description-text")[5].text.strip
    cat.color = bio_page.css("td.description-text")[6].text.strip
    cat.location = bio_page.css("td.description-text")[7].text.strip
    cat.fee = bio_page.css("td.description-text")[8].text.strip
    cat.description = bio_page.css("span#lbDescription").text.strip
  end
end
