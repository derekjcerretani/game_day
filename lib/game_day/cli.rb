  #CLI Controller
class GameDay::CLI

  def call
    puts "NBA Games:"
    list_games
    menu
    goodbye
  end

  def list_games
    #get games
    puts <<~DOC
      1. Houston Rockets vs Charlotte Hornets
      2. Minnesota Timberwolves vs Atlanta Hawks
      3. Washington Wizards vs Brooklyn Hornets
      4. Golden State Warriors vs Miami Heat
      5. Portland Trail Blazers vs Boston Celtics
      6. Chicago Bulls vs Memphis Grizzlies
      7. Detroit Pistons vs San Antonio Spurs
      8. Indiana Pacers vs Dallas Mavericks
      9. LA Clippers vs Utah Jazz
      10. Milwaukee Bucks vs Sacramento Kings
      11. New Orleans Pelicans vs Los Angeles Lakers
    DOC
    @games = GameDay::Game.today
  end

  def menu
    input = nil
    while input != "exit"
      puts <<~DOC
        To see a game type the game number.
        To see the list type 'list'.
        To leave type 'exit'.
      DOC
      input = gets.strip.downcase
      case input
      when "1"
        puts "More info on game 1"
      when "2"
        puts "More info on game 2"
      when "3"
        puts "More info on game 3"
      when "4"
        puts "More info on game 4"
      when "5"
        puts "More info on game 5"
      when "6"
        puts "More info on game 6"
      when "7"
        puts "More info on game 7"
      when "8"
        puts "More info on game 8"
      when "9"
        puts "More info on game 9"
      when "10"
        puts "More info on game 10"
      when "11"
        puts "More info on game 11"
      when "list"
        list_games
      else
        puts "Not sure what you want."
      end
    end
  end

  def goodbye
    puts "Goodbye"
  end

end
