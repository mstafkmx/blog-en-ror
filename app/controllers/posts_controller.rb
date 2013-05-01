class PostsController < ApplicationController
  def index
    @posts = Post.find(:all)
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    @post.title = params[:post][:title]
    @post.body = params[:post][:body]
    @post.save
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:post][:id])
    @post.title = params[:post][:title]
    @post.body = params[:post][:body]
    @post.save
  end
end
