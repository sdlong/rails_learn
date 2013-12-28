class PostsController < ApplicationController
	before_action :find_page

	before_action :login_required, :only => [:new, :create, :edit,:update,:destroy]
	
	def new
		@post = @page.posts.build
	end

	def edit
		@post = current_user.posts.find(params[:id])
	end

	def create
		@post = @page.posts.new(post_params)
		@post.author = current_user

		if @post.save
			redirect_to page_path(@page)
		else
			render :new
		end
 	end

 	def update
 		@post = current_user.posts.find(params[:id])

 		if @post.update(post_params)
 			redirect_to page_path(@page)
 		else
 			render :edit
 		end
 	end

 	def destroy
 		@post = current_user.posts.find(params[:id])

 		@post.destroy

 		redirect_to page_path(@page)
 	end

 	private

	def post_params
		params.require(:post).permit(:content)
	end

	def find_page
		@page = Page.find(params[:page_id])
	end
end
