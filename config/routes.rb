Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :gifs, only: [:index, :show]
      resources :reviews, only: [:index]
    end
  end
end
