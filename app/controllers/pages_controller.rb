class PagesController < ApplicationController
	
	before_action :login_required, :only => [:new, :create, :edit,:update,:destroy]
	
	def index
		@pages = Page.all
	end

	def new
		@page = Page.new
	end

	def show
		@page = Page.find(params[:id])
		@posts = @page.posts
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

	private

	def page_params
		params.require(:page).permit(:link, :title, :description, :messenge)
	end

end
