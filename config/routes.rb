Rails.application.routes.draw do
  resources :quotes

  namespace :api do
    namespace :v1 do
      resources :quotes, only: :index
    end
  end
end
