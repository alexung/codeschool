class Library
  attr_accessor :games

  def initialize(games)
    self.games = games
  end

  def has_game?(search_game)
    for game in games
      return true if game == search_game
    end
    false
  end

  def add_game(game)
    games << game
    log("#{game.name} was added in #{game.year} on #{game.system}")
  end

  private

  def log(message)
    puts message
  end
end


class ArcadeGame < Game
  attr_accessor :weight
  def initialize(name, options = {})
    self.name = name
    self.weight = options[:weight]
    self.year = options[:year]
    self.system = options[:system]
    super
  end
end

class ConsoleGame < Game
  def to_s
    "#{self.name} is on #{self.system}"
  end
end

