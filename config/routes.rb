Rails.application.routes.draw do
  get '/js_tests' => 'js_tests#index', :as => :js_tests
  get '/js_tests/*id' => 'js_tests#show', :as => :js_test
end
