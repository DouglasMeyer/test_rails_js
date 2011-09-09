class JsTestsController < ActionController::Base
  helper_method :tests, :test

  def index
  end

  def show
  end

private
  def tests
    @tests ||= Rails.application.config.assets.paths.inject([]){ |tests, path|
      tests + Dir[path + "/*_tests.js"]
    }.map{ |path| Pathname(path).basename('.js').to_s }
  end

  def test
    params[:id]
  end
end
