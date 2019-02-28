class GameDay::Game

    attr_accessor :name, :time, :live?

    def self.today
      #I should return a bunch of instances of games
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
      game_1 = self.new
      game_1.name = "Houston Rockets vs Charlotte Hornets"
      game_1.time = "7:30 EST"
      game_1.live? = true

      [game_1, game_2]
    end
end
