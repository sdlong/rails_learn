# -*- encoding : utf-8 -*-
# == Schema Information
#
# Table name: pages
#
#  id               :integer          not null, primary key
#  title            :string(255)
#  type             :string(255)
#  author_name      :string(255)
#  author_url       :string(255)
#  provider_name    :string(255)
#  provider_url     :string(255)
#  description      :text
#  thumbnail_url    :string(255)
#  thumbnail_width  :string(255)
#  thumbnail_height :string(255)
#  html             :string(255)
#  width            :string(255)
#  height           :string(255)
#  favicon_url      :string(255)
#  content          :string(255)
#  intro            :string(255)
#  messenge         :text
#  page_tag         :string(255)
#  count_click      :integer          default(0)
#  created_at       :datetime
#  updated_at       :datetime
#  user_id          :integer
#

class Page < ActiveRecord::Base

	belongs_to :owner, :class_name => "User", :foreign_key => :user_id
	has_many :posts
	
  after_create :update_from_embedly

	validates :intro, :presence => true
	validates :content, :presence => true, :uniqueness => true, :format => URI::regexp(%w(http https))
  validates :page_tag, :presence => true
	
  scope :recent, -> { order("updated_at DESC")}
  scope :order_by_hot, ->  { order("count_click DESC")}
    
  
  def update_from_embedly
 
    link = self
 
    urls = [content]

    embedly_api = Embedly::API.new(:key => Setting.embedly_key)
    embedly_objs = embedly_api.oembed(:urls => urls)
    embedly_obj = embedly_objs[0]
 
    response_data = embedly_obj.marshal_dump
 
    link.favicon_url       =  response_data[:favicon_url]
    link.title             =  response_data[:title]
    link.author_name       =  response_data[:author_name]
    link.author_url        =  response_data[:author_url]
    link.provider_name     =  response_data[:provider_name]
    link.provider_url      =  response_data[:provider_url]
    link.description       =  response_data[:description]
    link.thumbnail_url     =  response_data[:thumbnail_url]
    link.thumbnail_width   =  response_data[:thumbnail_width]
    link.thumbnail_height  =  response_data[:thumbnail_height]
    link.html              =  response_data[:html]
    link.width             =  response_data[:width]
    link.height            =  response_data[:height]
    
 
    link.save
  end

	def editable_by?(user)
		user && user == owner
	end

  def hit
    Page.increment_counter(:count_click, self.id)
  end

  def title_for_preview
    if title.blank?
      description
    else
      title
    end
  end
end
