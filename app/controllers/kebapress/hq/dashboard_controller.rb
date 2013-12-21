require_dependency 'kebapress/hq/application_controller'

module Kebapress
  class Hq::DashboardController < Hq::ApplicationController
    def index
      @posts = Kebapress::Post.all
      @categories = Kebapress::Category.all
    end
  end
end
