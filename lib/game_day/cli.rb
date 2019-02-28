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
    @games = GameDay::Game.today
  end

  def menu
    input = nil
    until input == "exit"
      puts <<~DOC
        To see a game type the game number.
        To see the list type 'list'.
        To leave type 'exit'.
      DOC
      input = gets.strip.downcase
      case input
      when "1"
        game_info(input)
      when "2"
        puts "More info on game 2"
      when "3"
        puts "More info on game 3"
      when "list"
        list_games
      else
        puts "Not sure what you want."
      end
    end
  end

  def game_info(input)
    game = @games[input.to_i]
    #puts out the time of the game if it's in the future, live! if it's on now, and final score if it's over
    puts "#{game.team_1} vs #{game.team_2} #{game.time} EST"
  end

  def goodbye
    puts "Goodbye!"
  end

end
