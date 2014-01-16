require_dependency 'kebapress/application_controller'

module Kebapress
  class DashboardController < ApplicationController
    def index
      @posts = Kebapress::Post.order('created_at DESC')
      @categories = Kebapress::Category.order('created_at DESC')
    end
  end
end
