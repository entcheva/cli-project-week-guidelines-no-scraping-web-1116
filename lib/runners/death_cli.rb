class DeathCausesCLI

  def call
    puts "Welcome to the Death Causes CLI!"
    puts "Type a year between 2007 - 2014, to display total deaths of that year."
    help

    input = gets.chomp.strip
    deaths = input_to_death_year(input)

    while input != "exit"
      if is_year?(input)
        puts "\n#{deaths.accumulate_deaths} \tDeaths : ALL\n------------------------------------"
        deaths.accumulated_death_by_diseases
      elsif input == "help"
        help
      else 
        puts "You didn't enter a valid input."
        puts "Please enter a year between 2007 and 2014."
      end

      puts "Type another year between 2007 - 2014."
      input = gets.chomp.strip
      deaths = input_to_death_year(input)
    end
  end

  def input_to_death_year(input)
    d = Death.new
    d.year = input
    d
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
