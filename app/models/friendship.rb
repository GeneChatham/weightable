class Friendship < ActiveRecord::Base
  # attr_accessible :user_id, :friend_id <-- no longer supported in Rails 4

  belongs_to :user

  def new
    @friendship = Friendship.new(friendship_params)
  end

  private

  # def friendship_params
  #   params.require(:friendship).permit(:user_id, :friend_id)
  # end
end
