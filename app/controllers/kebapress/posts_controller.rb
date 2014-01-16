require_dependency 'kebapress/application_controller'

module Kebapress
  class PostsController < ApplicationController
    def new
      @post = Kebapress::Post.new
      @categories = Kebapress::Category.all
    end

    def index
      @posts = Kebapress::Post.published.order('published_at DESC')
      render layout: 'layouts/application'
    end

    def show
      @post = Kebapress::Post.find(params[:id])
      render layout: 'layouts/application'
    end

    def create
      @post = Kebapress::Post.new(post_params)

      # params[:boolean_variable] returns 'true' or 'nil'
      # So we have to assign false value by using unless true
      @post.commentable = false unless @post.commentable
      @post.published = false unless @post.published
      @post.published_at = Time.now if @post.published

      # Relating post with Cybele app's current admin
      @post.admin = current_admin

      if @post.save
        redirect_to '/hq/blog/dashboard'
      else
        # On an error, a new page will be rendered
        # but it won't be rendered by new method.
        # So we need to get all Categories again.
        @categories = Kebapress::Category.all
        render 'new'
      end
    end

    def edit
      @post = Kebapress::Post.find(params[:id])
      @categories = Kebapress::Category.all
    end

    def update
      params[:post][:category_ids] ||= []
      @post = Kebapress::Post.find(params[:id])

      @post.commentable = false unless params[:commentable]
      @post.published = params[:post][:published] ? true : false
      @post.published_at ||= Time.now if @post.published

      @post.update(post_params)

      redirect_to '/hq/blog/dashboard'
    end

    def destroy
      @post = Kebapress::Post.find(params[:id])
      @post.destroy

      redirect_to '/hq/blog/dashboard'
    end

    def image_upload
      @photo = Photo.create(image: params[:file])
      # Rendering image's url as text for
      # Medium Editor Insert Plugin
      render text: @photo.image.url
    end

    private
      def post_params
        params.require(:post).permit(:title, :body, :published, :commentable, :tag_list, { category_ids: [] })
      end
  end
end
