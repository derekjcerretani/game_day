How to build a CLI Gem

1. Plan your gem, imagine your interface
2. Start with the project structure -- Google "How to build a gem?"
3. Start with the entry point - the file run
  #!/usr/bin/env ruby - in the bin file
  #require 'something'
  in terminal: ./bin/daily-deal
  cd bin/
  ls -lah (list of all attributes in human readable format)
  chmod +x daily-deal
4. Force that to build the CLI interface
5. stub out the interface
6. start making things real
7. discover objects.
8. program


rakefile include

def reload!
  load_all './lib'
end

task :console do
  Pry.start
end

- A command line interface for sports, starting with the NBA.

user types game_day

shows NBA games

Which game would you like to know more about?

What is a game?

A game has two teams
A game has a Time

What is a team?

A team has a record
