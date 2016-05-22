class InvalidGameError < StandardError; end
def new_game(name, options={})
  raise InvalidGameError, "A name must be provided for this game" unless name
  {
    name: name,
    year: options[:year],
    system: options[:system]
  }
end

begin
  game = new_game(nil)
rescue InvalidGameError => e
  puts "There was a problem creating your new game: #{e.message}"
end