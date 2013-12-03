require_dependency "kebapress/application_controller"

module Kebapress
  class DashboardController < ApplicationController
    layout 'layouts/hq/application'
    def index
      @posts = Kebapress::Post.all
      @categories = Kebapress::Category.all
    end
  end
end
