require_dependency "kebapress/application_controller"

module Kebapress
  class PostsController < ApplicationController
    def index
    	@posts = Kebapress::Post.published.order("published_at DESC")
    end

    def new
      @post = Kebapress::Post.new
    end

    def create
      @post = Kebapress::Post.new(post_params)
      if @post.save
        redirect_to action: :index
      else
        render 'new'
      end
    end

    def show
      @post = Kebapress::Post.find(params[:id])
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private
      def post_params
        params.require(:post).permit(:title, :body)
      end
  end
end
