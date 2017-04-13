class PostsController < ApplicationController

  def create
  	@post = Post.create(post_params)
  end

  private 

    def post_params
     params.require(:post).permit(:file, :content, :heading, :author)
    end
end
