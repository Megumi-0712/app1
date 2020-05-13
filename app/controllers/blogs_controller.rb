class BlogsController < ApplicationController
  def show
    @blog = Blog.find(params[:id])
  end

  def index
    @blogs = Blog.all
  end


  def new
  	@blog = Blog.new
  end

  def crete
  	blog = Blog.new(blog_params)
  	blog.save
  	redirect_to blog_path(blog.id)
  end

  def edit
    @blog = Blog.find(params[:id])
  end


  def update
    blog = Blog.find(params[:id])
    blog.update(blog_params)
    redirect_to blog_path(blog)
  end

  private
  def blog_params
  	paramsrequire(:blog)
  end
end
