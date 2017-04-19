class PostsController < ApplicationController
  before_action :authorize, only: [:create, :delete]
  before_action :find_post, only: [:show, :delete, :edit]
  def show
    @content = Content.find(1)
  end

  def create
  	@post = Post.create(post_params)
    if @post.save
 
      redirect_to root_path
    end
  end

  def edit
  end

  def delete
    @post.destroy

    redirect_to admin_page_path
  end

  def update_article
    @post = Post.find(params[:post][:id])
    if @post.update(post_params)
      redirect_to root_path
    end
  end

  private 
    def find_post
      @post = Post.find(params[:id])
    end

    def post_params
     params.require(:post).permit(:content, :heading, :author, :post, :image, :remote_image_url)
    end
end
