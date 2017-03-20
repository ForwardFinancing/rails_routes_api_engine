Rails.application.routes.draw do
  mount RailsRoutesApiEngine::Engine => "/"

  resources :some do
    member do
      get :some_custom_action
    end
  end

  resources :another do
    member do
      get :another_custom_action
    end
  end
end
