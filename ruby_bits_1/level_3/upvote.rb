class User

  def up_vote(friend)
    bump_karma
    friend.bump_karma
  end

  # private
  protected

  def bump_karma
    puts "karma up for #{name}"
  end

end