module Kebapress
  class ApplicationController < ActionController::Base
    before_filter :authenticate_admin!
    # Using Cybele app's layout for default
    layout Rails.configuration.kebapress.admin_layout
  end
end
