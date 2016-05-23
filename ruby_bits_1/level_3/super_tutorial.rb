class User
  def initialize(name)
    @name = name
  end
end

class Follower < User
  def initialize(name, following)
    @following = following
    super(name)
  end
  def relationship
    "#{@name} follows #{@following}"
  end
end

puts user_1 = User.new('alex')
puts user_2 = User.new('mary')

puts follower_1 = Follower.new('mary', 'alex')