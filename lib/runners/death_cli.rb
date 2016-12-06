class DeathCausesCLI

  def call
    puts "Welcome to the Death Causes CLI!"
    puts "Type a year between 2007 - 2014, to display total deaths of that year."
    help

    input = get_user_input
    deaths = Death.new(input)

    while input != "exit"
      if is_year?(input)
        puts "#{deaths.accumulate_deaths} deaths in #{input}"
        deaths.accumulated_death_by_dieases
      else
        puts "You didn't enter a valid input."
        puts "Please enter a year between 2007 and 2014."
      end

      input = get_user_input
    end
  end

  def get_user_input
    gets.chomp.strip
  end

  def is_year?(input)
    case input
    when "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014"
      return true
    end
    false
  end

  def help
    puts "Type 'exit' to exit."
    puts "Type 'help' to view this menu again."
  end
end
