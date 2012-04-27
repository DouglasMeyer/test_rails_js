module TestRailsJs
  def self.tests(&block)
    Rails.application.config.assets.paths.inject([]) do |all_tests, path|
      tests = []
      Rails.application.config.test_rails_js.tests_paths.each do |test_path|
        tests += Dir[path + test_path]
      end

      tests = block.call(tests, path) if block_given?
      all_tests + tests
    end
  end

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
    config.test_rails_js.tests_paths = [ "/*_tests.js", "/**/tests/**/*.js" ]
  end
end
