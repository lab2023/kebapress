require_dependency 'kebapress/hq/application_controller'

module Kebapress
  class Hq::DashboardController < Hq::ApplicationController
    def index
      @posts = Kebapress::Post.order('created_at DESC')
      @categories = Kebapress::Category.order('created_at DESC')
    end
  end
end
