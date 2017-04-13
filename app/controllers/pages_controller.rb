class PagesController < ApplicationController

	def home
		@content = Content.find(1)
		@post = Post.all
	end

	def admin_page
		@content = Content.find(1)
		@post = Post.new
	end

	def update_content
		
	end
end
