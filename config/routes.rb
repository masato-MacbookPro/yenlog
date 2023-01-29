Rails.application.routes.draw do
  resources :flows do
    collection do
      get :change_flow, defaults: { format: :json }
    end
  end
end
