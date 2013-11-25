require_dependency "kebapress/application_controller"

module Kebapress
  class PostsController < ApplicationController
    def index
    	@posts = Kebapress::Post.published
    end

    def new
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
  end
end
