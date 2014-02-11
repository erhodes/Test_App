TestApp::Application.routes.draw do
  root "agents#index"
  resources :agents
end
