class PagesController < ApplicationController
	
	def index
		@pages = Page.all
	end

	def new
		@pages = Page.new
	end

	def show
		@pages = Page.find(params[:id])
	end

	def edit
		@pages = Page.find(params[:id])
	end

	def create
	end

	def update
	end

	def destroy
	end

end
