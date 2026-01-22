class PostsController < ApplicationController

    def create
        @post = Post.create!(title: params[:title])
        render partial: "posts/post", locals: { post: @post }
    end

end
