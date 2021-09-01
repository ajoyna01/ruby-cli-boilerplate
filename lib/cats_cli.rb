def start_cli
    puts "Hi! Welcome to the Feral and Unloved Cats CLI"
    main_menu
    handle_user_choice
    puts "Thanks for using the Feral and Unloved CLI!"
  end
  
  def main_menu
    puts "Here's what you can do:".cyan
    puts "  1. Add Cat".cyan
    puts "  2. List Cats".cyan
    puts "  3. Return Cat".cyan
    puts "  4. Donate to Feral Cats".cyan
    puts "  5. Refer a Cat".cyan
    # Add other options like "edit thing, delete thing, etc..."
    puts "  exit".cyan
    puts "Type the number corresponding to your choice, or 'exit' to leave the program".cyan
  end

  def handle_user_choice
    input = gets.chomp
    while input != "exit" do
      if input =="1"
        add_cat
      else
    end
    # add conditional logic for what to do when a user types a certain input
  end

