module TestRailsJs
  class Engine < Rails::Engine
    engine_name "test_rails_js"
  end

  class Railtie < ::Rails::Railtie
    module TestRailsJsContext
      attr_accessor :test_rails_js_config
    end

    config.test_rails_js = ActiveSupport::OrderedOptions.new
    config.test_rails_js.global_assets = ActiveSupport::OrderedOptions.new
    config.test_rails_js.global_assets.javascripts = []
    config.test_rails_js.global_assets.stylesheets = []
  end
end
