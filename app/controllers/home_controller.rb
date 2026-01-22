class HomeController < ApplicationController
  def index
    @posts = Post.all
  end

  def search
    if params[:search].present?
      @posts = Post.where("posts.title LIKE ?", "%#{ params[:search] }%")
    end
  end
end
