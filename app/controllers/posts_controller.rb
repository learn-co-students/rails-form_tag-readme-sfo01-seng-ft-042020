class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
  end

  def create
    Post.create(title: params[:post][:title], description: params[:post][:description])
    # redirect to index(posts)
    redirect_to posts_path
  end
  
end
