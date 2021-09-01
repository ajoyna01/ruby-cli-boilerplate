CATS =[]

def start_cli
    puts "Hi! Welcome to the Feral and Unloved Cats CLI"
    main_menu
    handle_user_choice
    puts "Thanks for using the Feral and Unloved CLI!"
  end
  
  def main_menu
      puts "What would you like to do? Type the number that matches your choice or 'exit' to leave the program".cyan
      print_options
  end
    
  def print_options
    puts "Here's what you can do. Type:".cyan
    puts "  1. Add Cat".cyan
    puts "  2. List Cats".cyan
    puts "  3. Return Cat".cyan
    puts "  4. Donate to Feral Cats".cyan
    puts "  5. Refer a Cat".cyan
    puts "  exit".cyan
    puts "Type the number corresponding to your choice, or 'exit' to leave the program".cyan
  end

  def handle_user_choice
    input = gets.chomp
    while input != "exit" do
      if input =="1"
        cat = add_cat
        cat.print
      elsif input == "2"
        CATS.each do
          cat.print
        end
      elsif input == "3"
        puts "We are sorry you are not satisfied with your cat!"
        return_cat 
      elsif input == "4"
        donate_to_cats
      elsif input == "5"
        refer_cat
      elsif inoput == "debug"
      binding.pry
      else puts "Whoops! I didn't understand your choice".red
    end
      main_menu
      input = gets.chomp
    end
    end
  
  def add_cat
    print "What's the cat's name?".green
    name = gets.chomp
    print "What's the cat's color?".green
    color = gets.chomp 
    print "How much does the cat weight?".green
    weight = gets.chomp
    print "How dangerous is the cat?".green
    danger_level = gets.chomp
    cat = (
      name: name,
      color: color,
      weight: weight,
      danger_level: danger_level
    ) 
    CATS << cat
    cat
  end
  def return_cat
    print "Sorry you're not happy with your cat. Please choose the cat you wish to return:"
      CATS.each.with_index(1) do |cat, index|
        puts "#{index}. #{cat.name}"
      end
      input = gets.chomp
      input_to_index = input_to_index - 1
      cat_to_return = CATS[input_to_index]
      CATS << cat_to_return

end

