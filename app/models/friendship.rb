class Friendship < ActiveRecord::Base
  # attr_accessible :user_id, :friend_id <-- no longer supported in Rails 4

  belongs_to :user
  belongs_to :friend, :class_name => "User"


end
