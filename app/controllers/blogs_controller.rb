class BlogsController < ApplicationController
  before_action :require_admin, except: [:index, :show]
  def index
    @blog = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    @blog.save
    redirect_to @blog
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])
    @blog.update(blog_params)
    redirect_to @blog
  end

  private
    def blog_params
      params.require(:blog).permit(:title, :body, :image)
    end
end
