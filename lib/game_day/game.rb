require_relative './version'

class GameDay::Game

    attr_accessor :team_1, :team_2, :time, :live

    @@games = []

    def self.today
      #I should return a bunch of instances of games
      # puts <<~DOC
      #   1. Houston Rockets vs Charlotte Hornets
      #   2. Minnesota Timberwolves vs Atlanta Hawks
      #   3. Washington Wizards vs Brooklyn Hornets
      # DOC
      @@games.each.with_index(1) do |game, index|
        puts "#{index}. #{game.team_1} vs #{game.team2}"
      end
    end

    def initialize(team_1 = nil, team_2 = nil, time = nil, live = false)
      @team_1 = team_1
      @team_2 = team_2
      @time = time
      @live = live
      @@games << self
    end

    def self.games
      @@games
    end
end
