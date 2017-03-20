RailsRoutesApiEngine::Engine.routes.draw do
  # The routes route.
  resources :routes, only: [:index]
end
