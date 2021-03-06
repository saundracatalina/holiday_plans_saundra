Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :employees, only: [:show] do
        resources :vacation_requests, only: [:create]
      end
      resources :managers do
        resources :employees do
          resources :vacation_requests
        end
      end
    end
  end
end
