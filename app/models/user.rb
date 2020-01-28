class User < ApplicationRecord

  act_as_follower
  act_as_followee
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable

  has_many :questions
  has_many :answers

  def topics
    followees.where(followee_type: 'Topic')
  end

  def following
    followees.where(followee_type: 'User')
  end
end
