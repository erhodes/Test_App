TestApp::Application.routes.draw do
  root "agents#index"
  resources :agents
  resources :missions, only: [:new, :create, :destroy]
end
