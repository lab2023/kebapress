require_dependency "kebapress/application_controller"

module Kebapress
  class PostsController < ApplicationController
    def index
    	@posts = Post.all.where.not(published_at: nil)
    end

    def new
    end

    def show
    end

    def edit
    end

    def show
    end

    def update
  	end

  	def destroy
		end
  end
end
