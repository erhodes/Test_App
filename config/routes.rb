TestApp::Application.routes.draw do
  root "agents#index"
  resources :agents
  resources :missions, only: [:new, :create, :destroy]
  resources :active_missions, only: [:new, :create, :destroy]
  get '/active_missions/goblue',to: 'active_missions#goblue'
end
