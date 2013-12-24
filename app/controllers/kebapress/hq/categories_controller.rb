require_dependency 'kebapress/hq/application_controller'

module Kebapress
  class Hq::CategoriesController < Hq::ApplicationController
    def show
      @posts = Kebapress::Category.find(params[:id]).posts
    end

    def new
      @category = Kebapress::Category.new
    end

    def create
      @category = Kebapress::Category.create(category_params)

      if @category.save
        redirect_to '/blog/hq/dashboard'
      else
        render 'new'
      end
    end

    def edit
      @category = Kebapress::Category.find(params[:id])
    end

    def update
      @category = Kebapress::Category.find(params[:id])
      @category.update(category_params)
      redirect_to '/blog/hq/dashboard'
    end

    def destroy
      @category = Kebapress::Category.find(params[:id])
      @category.destroy

      redirect_to '/blog/hq/dashboard'
    end

    private
      def category_params
        params.require(:category).permit(:title)
      end
  end
end
