class BlogsController < ApplicationController
  def index
  end

  def show
  end

  def new
  	  @blog = Blog.new
  end

  def crete
  	  blog = Blog.new(blog_params)
  	  blog.save
  	  redirect_to blog_path
  end

  private
  def blog_params
  	paramsrequire(:blog)
  end
end
