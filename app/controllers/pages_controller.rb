class PagesController < ApplicationController
	before_filter :authorize, only: [:admin_page, :update_content]


	def home
		@content = Content.find(1)
		@post = Post.all
	end

	def admin_page
		@content = Content.find(1)
		@post = Post.new
	end

	def update_content
		@content = Content.find(1)
		if @content.update(content_params)
			redirect_to root_path
		end
	end

	private

		def content_params
			params.require(:content).permit(:heading, :welcome_text, :contact_number, :text_content_main,
				:owner_email, :site_name)
		end
end
