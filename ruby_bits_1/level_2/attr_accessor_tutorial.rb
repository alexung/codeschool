class Game
  attr_accessor :name, :year, :system
  def initialize(name, options={})
    @name = name
    @year = options[:year]
    @system = options[:system]
  end
  # no need to create getter/setter methods down here. attr_accessor does it for us
end
