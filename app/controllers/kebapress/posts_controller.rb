require_dependency "kebapress/application_controller"

module Kebapress
  class PostsController < ApplicationController
    def index
    	@posts = Kebapress::Post.published.order("published_at DESC")
    end

    def new
      @post = Kebapress::Post.new
      render layout: 'layouts/hq/application'
    end

    def create
      @post = Kebapress::Post.new(post_params)
      if @post.save
        redirect_to post_path(@post)
      else
        render 'new'
      end
    end

    def show
      @post = Kebapress::Post.find(params[:id])
      render layout: 'kebapress/application'
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private
      def post_params
        params.require(:post).permit(:title, :body, :published_at)
      end
  end
end
