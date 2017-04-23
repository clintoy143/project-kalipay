class PagesController < ApplicationController
	before_filter :authorize, only: [:admin_page, :update_content]
	before_action :content_find

	def test_page
	end

	def home
		
		@posts = Post.order("created_at DESC").page(params[:page]).per_page(3)
		respond_to do |format|
        	format.html
        	format.js
    	end
	end

	def article_list
		
		@posts = Post.order("created_at DESC").page(params[:page]).per_page(6)
	end

	def admin_page
		
		@post = Post.new
		@post_list = Post.all
	end

	def update_content
		
		if @content.update(content_params)
			redirect_to root_path
		end
	end

	private

		def content_find
			@content = Content.find(1)
		end

		def content_params
			params.require(:content).permit(:heading, :welcome_text, :contact_number, :text_content_main,
				:owner_email, :site_name)
		end
end
