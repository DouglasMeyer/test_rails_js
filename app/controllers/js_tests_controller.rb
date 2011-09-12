class JsTestsController < ActionController::Base
  helper_method :tests, :test

  def index
  end

  def show
  end

private
  def tests
    @tests ||= Rails.application.config.assets.paths.inject([]){ |tests, path|
      asset_path = Pathname(path)
      tests + (
        Dir[path + "/*_tests.js"] +
        Dir[path + "/tests/**/*.js"]
      ).map{ |test|
        Pathname(test).relative_path_from(asset_path).sub_ext('').to_s
      }
    }
  end

  def test
    params[:id]
  end
end
