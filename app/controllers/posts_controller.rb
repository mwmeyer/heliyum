class PostsController < ApplicationController
  http_basic_authenticate_with name: 'admin',
                               password: 'password',
                               except: [:index, :show]
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.recent.limit(10)
    @total_posts = Post.count
    @search_query = params[:search]

    if @search_query.present?
      @posts = Post.search(@search_query).recent
    end
  end

  def show
    @recent_posts = Post.where.not(id: @post.id).recent.limit(5)
    @comments = @post.comments.recent
    @comment = @post.comments.build
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post, notice: 'Post was successfully created!'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: 'Post was successfully updated!'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path, notice: 'Post was successfully deleted!'
  end

  private

  def set_post
    @post = Post.find_by!(slug: params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content, :author)
  end
end
