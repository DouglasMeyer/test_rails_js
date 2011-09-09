Rails.application.routes.draw do
  resources :js_tests, :only => [ :index, :show ]
end
