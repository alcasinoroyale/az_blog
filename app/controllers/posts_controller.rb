class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update]

  def index
    @posts = Post.all
    @posts = Post.order(params[:sort])
  end

  def new
    @post = Post.new
    if params[:category_id]
      @category = Category.find(params[:category_id])
    else
      @category = Category.first
    end
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      flash[:message] = "#{@post.title} has been created successfully!"
      redirect_to post_path(@post)
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def edit
  end

  def update
    if @post.update(post_params)
      flash[:message] = "#{@post.name} has been updated successfully!"
      redirect_to post_path(@post)
    else
      render 'edit'
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :description, :content, :category_id)
  end

  def set_post
    @post = Post.find(params[:id])
  end

end
