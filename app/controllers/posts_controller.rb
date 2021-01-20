class PostsController < ApplicationController

  #@post = Post.find(params[:id])
  #before_action:メソッド名 各アクションに前に実行するメソッドを指定できます
  before_action :set_post, only: %i[show edit update destroy]

  def index
    @posts = Post.order(id: :asc)
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.create!(post_params)
    redirect_to post
  end

  def edit

  end

  def update
    @post.update!(post_params)
    redirect_to post


  end

  def destroy
    @post.destroy!
    redirect_to post
  end

  private
  def post_params
    params.require(:post).permit(:title, :content)
  end
end
