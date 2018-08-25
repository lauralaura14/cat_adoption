class CatAdoption::CLI

  def call
    show_list
    selection
    leave
  end

  def show_list
    puts "Hello!"
    puts "List cats for adoption:"
    @cats = CatAdoption::Cat.all
    @cats.each.with_index(1) do |cat, i|
      puts "#{i}. #{cat.name}"
    end
  end

  def selection
    input = nil
    while input != "exit"
      puts "Select the number of the cat you would like to learn about or type cats to see the list again or type exit to leave:"
      input = gets.strip.downcase

      if input.to_i > 0
        cat = @cats[input.to_i-1]
        puts "#{cat.bio}"
      elsif input == "cats"
        show_list
      else
        puts "Invalid choice. Type cats or exit."
      end
    end
  end

  def leave
    puts "Thanks for reading!"
  end

end
