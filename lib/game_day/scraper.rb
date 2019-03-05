require_relative './version'

class GameDay::Scraper

  def self.get_page
    #:team_1, :team_2, :time, :live, :wins, :losses
    page = Nokogiri::HTML(open("https://www.nba.com/#/"))
    binding.pry
  end




end
