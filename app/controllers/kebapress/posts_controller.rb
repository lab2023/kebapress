require_dependency "kebapress/application_controller"

module Kebapress
  class PostsController < ApplicationController
    def index
    	@posts = Kebapress::Post.published.order("published_at DESC")
    end

    def show
      @post = Kebapress::Post.find(params[:id])
    end
  end
end
