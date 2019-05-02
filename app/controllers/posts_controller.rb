class PostsController < ApplicationController

  def index
    @post = Post.last
  end

  def create
    Post.create(post_params)
    redirect_to root_path
  end

  def show
    @post = Post.find(params[:id])
  end
  
  

  private

  def post_params
    params.require(:post).permit(:title, :author, :body)
  end
 
  
 end
