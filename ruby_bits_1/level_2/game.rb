class Game
  def initialize(name, options={})
    @name = name
    @year = options[:year]
    @system = options[:system]
  end
end
