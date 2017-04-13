class PagesController < ApplicationController

	def home
		@content = Content.find(1)
	end

end
