module Kebapress
  class Engine < ::Rails::Engine
    isolate_namespace Kebapress

    config.kebapress = ActiveSupport::OrderedOptions.new

    config.after_initialize do
      config.kebapress.front_layout = 'application'
      config.kebapress.admin_layout = 'hq/application'
    end
  end
end
