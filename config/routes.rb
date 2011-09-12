Rails.application.routes.draw do
  match '/js_tests' => 'js_tests#index', :as => :js_tests
  match '/js_tests/*id' => 'js_tests#show', :as => :js_test
end
