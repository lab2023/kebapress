module Kebapress
  class ApplicationController < ActionController::Base
    before_filter :authenticate_admin!
    # Using Cybele app's layout for default
    layout 'layouts/hq/application'
  end
end
