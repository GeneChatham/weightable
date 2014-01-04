class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :profilepic, ImageUploader

  has_many :weigh_ins
  has_many :comments
  has_many :friendships

end
