class Page < ActiveRecord::Base

	has_many :posts
	
	validates :link, :presence => true
	validates :title, :presence => true
end
