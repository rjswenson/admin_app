AdminApp::Application.routes.draw do
  resources :users
  get '/', :controller => 'users', :action => 'index'
end
