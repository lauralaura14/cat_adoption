class CatAdoption::CLI

  def call
    puts "Welcome to Austin Humane Society, located at 124 W. Anderson Lane, Austin, Texas!"
    CatAdoption::Scraper.scrape_main_page
    show_list
    selection
    leave
  end

  def show_list
    puts " "
    puts "Here is a list of all the cute cats available for adoption:"
    @cats = CatAdoption::Cat.all
    @cats.each.with_index(1) do |cat, i|
      puts "#{i}. #{cat.name}"
    end
  end

  def selection
    loop do

    puts " "
    puts "Please select the number of the cat you would like to learn about or type in \"cats\" to see the list again or type \"exit\" to leave:"
    input = gets.strip.downcase

    if input.to_i > 0 && input.to_i <= @cats.count
      cat = @cats[input.to_i - 1]
      CatAdoption::Scraper.scrape_bio_page(cat)
      puts " "
      puts "#{cat.number_label} #{cat.number}"
      puts "#{cat.breed_label} #{cat.breed}"
      puts "#{cat.sex_label} #{cat.sex}"
      puts "#{cat.dob_label} #{cat.dob}"
      puts "#{cat.age_label} #{cat.age}"
      puts "#{cat.weight_label} #{cat.weight}"
      puts "#{cat.color_label} #{cat.color}"
      puts "#{cat.location_label} #{cat.location}"
      puts "#{cat.fee_label} #{cat.fee}"
      puts "#{cat.description}"
    elsif input == "exit"
      return
    elsif input == "cats"
      show_list
    else
      puts " "
      puts "Invalid choice. Please type in either \"cats\" or \"exit.\""
    end
  end
end

  def leave
    puts " "
    puts "Thank you for visiting Austin Humane Society! Come back soon!"
  end

end
