class PostsController < ApplicationController

	def new
		@page = Page.find(params[:page_id])
		@post = @page.posts.build
	end

	def edit
		@page = Page.find(params[:page_id])
		@post = @page.posts.find(params[:id])
	end

	def create
		@page = Page.find(params[:page_id])
		@post = @page.posts.new(post_params)

		if @post.save
			redirect_to page_path(@page)
		else
			render :new
		end
 	end

 	def update
 		@page = Page.find(params[:page_id])
 		@post = @page.posts.find(params[:id])

 		if @post.update(post_params)
 			redirect_to page_path(@page)
 		else
 			render :edit
 		end
 	end

 	def destroy
 		@page = Page.find(params[:page_id])
 		@post = @page.posts.find(params[:id])

 		@post.destroy

 		redirect_to page_path(@page)
 	end

 	private

	def post_params
		params.require(:post).permit(:content)
	end
end
