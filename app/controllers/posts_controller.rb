class PostsController < ApplicationController
  before_action :authorize, only: [:create, :delete]
  before_action :find_post, only: [:show, :delete, :update_article]
  def show
  end

  def create
  	@post = Post.create(post_params)
    if @post.save
      redirect_to root_path
    end
  end

  def delete
    @post.destroy

    redirect_to admin_page_path
  end

  def update_article
    if @post.update(post_params)
      redirect_to admin_page_path
    end
  end

  private 
    def find_post
      @post = Post.find(params[:id])
    end

    def post_params
     params.require(:post).permit(:content, :heading, :author, :post, :image)
    end
end
