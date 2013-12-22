class WeighIn < ActiveRecord::Base

  mount_uploader :weightpic, ImageUploader
  belongs_to :user
  has_many :comments
  
end
