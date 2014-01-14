# -*- encoding : utf-8 -*-
class PagesController < ApplicationController
	
	before_action :login_required, :only => [:edit_link, :new, :create, :edit,:update,:destroy]
	
	def index
		@pages = Page.all.order("created_at DESC")
	end

	def new
		@page = Page.new
	end

	def show
		@page = Page.find(params[:id])

		@page.hit

		# TODO : rename count_click to hits
#		count = @page.count_click+1
#		@page.update_attributes( :count_click => count)



	end

	def edit
		@page = current_user.pages.find(params[:id])
	end

	def create
		@page = current_user.pages.build(page_params)

		if @page.save
			redirect_to pages_path
		else
			render :new
		end
	end

	def update
		@page = current_user.pages.find(params[:id])

		if @page.update(page_params)
			redirect_to page_path(@page)
		else
			render :edit
		end
	end

	def destroy
		@page = current_user.pages.find(params[:id])

		@page.destroy

		redirect_to pages_path
	end



	#其他分頁

	def edit_link
		@page = current_user.pages.find(params[:id])
	end

	def hot
		@pages = Page.all.order("count_click DESC")
	end

	def news
		@pages = Page.where( :page_tag => 'news', ).order("updated_at DESC")
	end

	def practical
		@pages = Page.where( :page_tag => 'practical', ).order("updated_at DESC")
	end

	def front_end
		@pages = Page.where( :page_tag => 'front_end', ).order("updated_at DESC")
	end

	def recommend
		@pages = Page.where( :page_tag => 'recommend', ).order("updated_at DESC")
	end

	def other
		@pages = Page.where( :page_tag => 'other', ).order("updated_at DESC")
	end

	def feed
    @pages = Page.all(:select => "id, title, description, content, intro, created_at", :order => "created_at DESC", :limit => 20) 
    render :template => 'pages/feed.rss.builder', :layout => false
  end

	def home
		@must_hot_page = Page.order("count_click DESC").first
		@good_front = Page.find(7)
		@good_back = Page.find(2)
		@new_pages = Page.all.order("created_at DESC").limit(5)
	end


	private

	def page_params
		params.require(:page).permit(:content, :intro, :messenge, :page_tag, :title, :thumbnail_url, :description)
	end

end
