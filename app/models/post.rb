class Post < ActiveRecord::Base

	belongs_to :page

	validates :content, :presence => true
end
