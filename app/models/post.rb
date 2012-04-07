class Post < ActiveRecord::Base
	attr_accessible :topic, :content
	validates :topic, presence: true, :length => {:maximum => 40}
	validates :content, presence: true
	has_and_belongs_to_many :tags
end
