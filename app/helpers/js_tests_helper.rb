module JsTestsHelper
  def global_assets
    Rails.application.config.test_rails_js.global_assets
  end

  def tests_by_path
    tests.inject({}) do |acc, test|
      node = acc
      path, test_name = test[:path].split
      path.each_filename do |name|
        node = (node[name] ||= {})
      end
      node[test_name.to_s] = test[:asset]
      acc
    end
  end
end
