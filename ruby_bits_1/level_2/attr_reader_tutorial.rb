class Game
  attr_accessor :name, :year, :system
  attr_reader :created_at
  def initialize(name, options={})
    @name = name
    @year = options[:year]
    @system = options[:system]
    @created_at = Time.now
  end
end

# Can create attr_readers/attr_accessors that refer to the instance var's defined
# NOT to the arguments you're passing in