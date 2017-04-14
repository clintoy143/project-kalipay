class PostsController < ApplicationController
  before_action :authorize, only: [:create, :delete]
  def show
  	@post = Post.find(params[:id])
  end

  def create
  	@post = Post.create(post_params)
    if @post.save
      redirect_to root_path
    end
  end

  def delete
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to admin_page_path
  end

  private 

    def post_params
     params.require(:post).permit(:content, :heading, :author, :post, :image)
    end
end
