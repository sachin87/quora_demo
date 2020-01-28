class Topic < ApplicationRecord
	act_as_followee
	validates :name, presence: true, uniqueness: true
end
