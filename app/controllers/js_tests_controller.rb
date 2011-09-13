class JsTestsController < ActionController::Base
  helper_method :tests, :test

  def index
  end

  def show
  end

private
  def tests
    @tests ||= TestRailsJs.tests do |tests, path|
      asset_path = Pathname(path)
      tests.map do |test|
        { :asset => Pathname(test).relative_path_from(asset_path).sub_ext('').to_s,
          :path => Pathname(test).relative_path_from(Rails.root) }
      end
    end
  end

  def test
    params[:id]
  end
end
