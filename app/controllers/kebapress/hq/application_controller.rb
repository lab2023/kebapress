module Kebapress
  class Hq::ApplicationController < ActionController::Base
    before_filter :authenticate_admin!
    layout 'layouts/hq/application'
  end
end
