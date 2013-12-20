require_dependency "kebapress/hq/application_controller"

module Kebapress
  class Hq::DashboardController < Hq::ApplicationController
    layout 'layouts/hq/application'
    def index
      @posts = Kebapress::Post.all
      @categories = Kebapress::Category.all
    end
  end
end
