class Post < ActiveRecord::Base
	attr_accessible :topic, :content
	validates :topic, :length => {:maximum => 40}
end
