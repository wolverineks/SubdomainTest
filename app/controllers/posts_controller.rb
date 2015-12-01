class PostsController < ApplicationController
  def show
    @post = @blog.posts.find(params[:id])
  end
end
