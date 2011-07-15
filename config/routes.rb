Pfpb::Application.routes.draw do
  resources :characters
  resources :races
  match '/:controller(/:action(/:id))'
  match '/' => 'races#index'
end

