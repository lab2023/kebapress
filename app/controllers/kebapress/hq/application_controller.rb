module Kebapress
  class Hq::ApplicationController < ActionController::Base
    before_filter :authenticate_admin!
  end
end
