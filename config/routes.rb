Rails.application.routes.draw do
  resources :flows do
    collection do
      get :change_flow, defaults: { format: :json }
    end
  end
  resources :categories do
    collection do
      get :search, defaults: { format: :json } 
    end
  end
  namespace :category do
    resources :reports
  end
end
