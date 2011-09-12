module JsTestsHelper
  def global_assets
    Rails.application.config.test_rails_js.global_assets
  end
end
