class Page < ActiveRecord::Base

	belongs_to :owner, :class_name => "User", :foreign_key => :user_id

	has_many :posts
	
	validates :link, :presence => true
	validates :title, :presence => true

	def editable_by?(user)
		user && user == owner
	end
end
