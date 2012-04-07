class Tag < ActiveRecord::Base
	attr_accessible :name, :quantity
	validates :name, presence: true
	has_and_belongs_to_many :posts
end
